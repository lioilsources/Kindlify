import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class Books extends Table {
  TextColumn get slug => text()();
  TextColumn get title => text()();
  TextColumn get sourceLanguage => text()();
  TextColumn get script => text()();
  TextColumn get pipelineVersion => text().withDefault(const Constant(''))();
  TextColumn get generatedAt => text().withDefault(const Constant(''))();
  IntColumn get downloadedAt => integer()();
  IntColumn get totalNodes => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {slug};
}

class Nodes extends Table {
  TextColumn get id => text()();
  TextColumn get bookSlug => text().references(Books, #slug)();
  TextColumn get kind => text()(); // book | chapter | section | paragraph
  TextColumn get label => text()();
  TextColumn get parentId => text().nullable()();
  IntColumn get byteStart => integer().withDefault(const Constant(0))();
  IntColumn get byteEnd => integer().withDefault(const Constant(0))();
  IntColumn get depth => integer().withDefault(const Constant(0))();
  // Original-language text of the node (bundle `texts`); null for books
  // exported without it. Leaves carry their passage, childless chapters
  // the whole chapter.
  TextColumn get originalText => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Terms extends Table {
  IntColumn get rowId => integer().autoIncrement()();
  TextColumn get nodeId => text().references(Nodes, #id)();
  TextColumn get bookSlug => text()();
  TextColumn get term => text()();
  RealColumn get score => real()();
  IntColumn get count => integer()();
  TextColumn get kind => text()(); // word | phrase | entity
}

class Summaries extends Table {
  TextColumn get nodeId => text().references(Nodes, #id)();
  TextColumn get locale => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {nodeId, locale};
}

@DriftDatabase(tables: [Books, Nodes, Terms, Summaries])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'kindlify'));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (from < 2) await m.addColumn(nodes, nodes.originalText);
        },
      );

  // --- Books ---

  Future<List<Book>> allBooks() => select(books).get();

  Future<Book?> bookBySlug(String slug) =>
      (select(books)..where((b) => b.slug.equals(slug))).getSingleOrNull();

  Future<void> upsertBook(BooksCompanion book) =>
      into(books).insertOnConflictUpdate(book);

  // --- Nodes ---

  Future<List<Node>> nodesByBook(String bookSlug) =>
      (select(nodes)..where((n) => n.bookSlug.equals(bookSlug))).get();

  Future<Node?> nodeById(String id) =>
      (select(nodes)..where((n) => n.id.equals(id))).getSingleOrNull();

  Future<List<Node>> childrenOf(String parentId) =>
      (select(nodes)..where((n) => n.parentId.equals(parentId))).get();

  Future<List<Node>> rootNodes(String bookSlug) => (select(nodes)
        ..where(
          (n) => n.bookSlug.equals(bookSlug) & n.parentId.isNull(),
        ))
      .get();

  Future<void> insertNode(NodesCompanion node) =>
      into(nodes).insertOnConflictUpdate(node);

  /// Original text for the reading mode: the node's own text, otherwise its
  /// children's texts in order (a chapter whose passages are leaves).
  Future<String> originalTextFor(String nodeId) async {
    final node = await nodeById(nodeId);
    if (node == null) return '';
    if ((node.originalText ?? '').isNotEmpty) return node.originalText!;
    final children = await childrenOf(nodeId)
      ..sort((a, b) => a.id.compareTo(b.id));
    return children
        .map((c) => c.originalText ?? '')
        .where((t) => t.isNotEmpty)
        .join('\n\n');
  }

  /// Whether any node of the book carries original text.
  Future<bool> bookHasOriginalText(String bookSlug) async {
    final row = await (select(nodes)
          ..where(
              (n) => n.bookSlug.equals(bookSlug) & n.originalText.isNotNull())
          ..limit(1))
        .getSingleOrNull();
    return row != null;
  }

  // --- Terms ---

  Future<List<Term>> termsForNode(String nodeId, {int limit = 50}) =>
      (select(terms)
            ..where((t) => t.nodeId.equals(nodeId))
            ..orderBy([(t) => OrderingTerm.desc(t.score)])
            ..limit(limit))
          .get();

  Future<void> insertTerm(TermsCompanion term) => into(terms).insert(term);

  Future<void> deleteTermsForBook(String bookSlug) =>
      (delete(terms)..where((t) => t.bookSlug.equals(bookSlug))).go();

  /// Returns node IDs (at given depth) that contain ALL of the provided terms.
  Future<List<String>> nodesContainingAllTerms(
    String bookSlug,
    List<String> termList,
    int depth,
  ) async {
    if (termList.isEmpty) return [];

    // Build a query: for each term, get matching node IDs, then intersect.
    // We use a subquery approach: count how many of the terms match per node.
    final termCount = termList.length;
    final placeholders = List.filled(termCount, '?').join(', ');

    final result = await customSelect(
      '''
      SELECT n.id
      FROM nodes n
      JOIN terms t ON t.node_id = n.id
      WHERE n.book_slug = ?
        AND n.depth = ?
        AND t.term IN ($placeholders)
      GROUP BY n.id
      HAVING COUNT(DISTINCT t.term) = ?
      ''',
      variables: [
        Variable.withString(bookSlug),
        Variable.withInt(depth),
        ...termList.map(Variable.withString),
        Variable.withInt(termCount),
      ],
    ).get();

    return result.map((row) => row.read<String>('id')).toList();
  }

  // --- Summaries ---

  Future<String?> summaryForNode(String nodeId, String locale) async {
    final row = await (select(summaries)
          ..where(
            (s) => s.nodeId.equals(nodeId) & s.locale.equals(locale),
          ))
        .getSingleOrNull();
    // Fallback to English if requested locale missing.
    if (row != null) return row.content;
    final fallback = await (select(summaries)
          ..where(
            (s) => s.nodeId.equals(nodeId) & s.locale.equals('en'),
          ))
        .getSingleOrNull();
    return fallback?.content;
  }

  Future<void> upsertSummary(SummariesCompanion summary) =>
      into(summaries).insertOnConflictUpdate(summary);

  /// Returns descendants of [ancestorId] ranked by combined TF-IDF score
  /// for the given terms. Only nodes with at least one matching term are
  /// returned. With [includeSelf], the ancestor itself may also match.
  Future<List<Node>> scoreDescendantsForTerms(
    String ancestorId,
    List<String> termList, {
    bool includeSelf = false,
    int limit = 10,
  }) async {
    if (termList.isEmpty) return [];
    final placeholders = List.filled(termList.length, '?').join(', ');
    final selfFilter = includeSelf ? '' : 'AND n.id != ?';
    final rows = await customSelect(
      '''
      WITH RECURSIVE subtree(id) AS (
        SELECT ?
        UNION ALL
        SELECT n.id FROM nodes n JOIN subtree s ON n.parent_id = s.id
      )
      SELECT n.id, n.book_slug, n.kind, n.label, n.parent_id,
             n.byte_start, n.byte_end, n.depth,
             SUM(t.score) AS total_score
      FROM nodes n
      JOIN subtree s ON s.id = n.id
      JOIN terms t ON t.node_id = n.id
      WHERE t.term IN ($placeholders)
        $selfFilter
      GROUP BY n.id
      ORDER BY total_score DESC
      LIMIT ?
      ''',
      variables: [
        Variable.withString(ancestorId),
        ...termList.map(Variable.withString),
        if (!includeSelf) Variable.withString(ancestorId),
        Variable.withInt(limit),
      ],
    ).get();

    return rows
        .map(
          (row) => Node(
            id: row.read<String>('id'),
            bookSlug: row.read<String>('book_slug'),
            kind: row.read<String>('kind'),
            label: row.read<String>('label'),
            parentId: row.readNullable<String>('parent_id'),
            byteStart: row.read<int>('byte_start'),
            byteEnd: row.read<int>('byte_end'),
            depth: row.read<int>('depth'),
          ),
        )
        .toList();
  }

  // --- Bulk import (called once per book) ---

  Future<void> deleteBook(String slug) async {
    // Fetch node IDs for this book first, then delete summaries by those IDs.
    final bookNodes = await nodesByBook(slug);
    if (bookNodes.isNotEmpty) {
      final nodeIds = bookNodes.map((n) => n.id).toList();
      await (delete(summaries)..where((s) => s.nodeId.isIn(nodeIds))).go();
    }
    await deleteTermsForBook(slug);
    await (delete(nodes)..where((n) => n.bookSlug.equals(slug))).go();
    await (delete(books)..where((b) => b.slug.equals(slug))).go();
  }
}
