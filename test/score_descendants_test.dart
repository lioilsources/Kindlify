import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kindlify/core/database/app_database.dart';

void main() {
  late AppDatabase db;

  Future<void> insertNode(String id, String? parentId, int depth) {
    return db.insertNode(
      NodesCompanion.insert(
        id: id,
        bookSlug: 'test-book',
        kind: depth == 0 ? 'book' : (depth == 1 ? 'chapter' : 'section'),
        label: id,
        parentId: Value(parentId),
        depth: Value(depth),
      ),
    );
  }

  Future<void> insertTerm(String nodeId, String term, double score) {
    return db.insertTerm(
      TermsCompanion.insert(
        nodeId: nodeId,
        bookSlug: 'test-book',
        term: term,
        score: score,
        count: 1,
        kind: 'word',
      ),
    );
  }

  setUp(() async {
    db = AppDatabase(NativeDatabase.memory());
    await db.upsertBook(
      BooksCompanion.insert(
        slug: 'test-book',
        title: 'Test Book',
        sourceLanguage: 'zh',
        script: 'han',
        downloadedAt: 0,
      ),
    );
    // root -> s1 -> (c1, c2), root -> s2 -> (c3, c4)
    await insertNode('root', null, 0);
    await insertNode('s1', 'root', 1);
    await insertNode('s2', 'root', 1);
    await insertNode('c1', 's1', 2);
    await insertNode('c2', 's1', 2);
    await insertNode('c3', 's2', 2);
    await insertNode('c4', 's2', 2);

    await insertTerm('root', 'water', 0.5);
    await insertTerm('s1', 'water', 0.6);
    await insertTerm('c1', 'water', 0.9);
    await insertTerm('c2', 'water', 0.7);
    await insertTerm('c3', 'water', 0.8);
    await insertTerm('c1', 'soft', 0.4);
    await insertTerm('c3', 'soft', 0.3);
  });

  tearDown(() => db.close());

  test('scopes results to descendants of the ancestor', () async {
    final nodes = await db.scoreDescendantsForTerms('s1', ['water']);
    expect(nodes.map((n) => n.id), unorderedEquals(['c1', 'c2']));
  });

  test('excludes the ancestor itself by default', () async {
    final nodes = await db.scoreDescendantsForTerms('root', ['water']);
    expect(nodes.map((n) => n.id), isNot(contains('root')));
    expect(nodes.map((n) => n.id), containsAll(['s1', 'c1', 'c2', 'c3']));
  });

  test('includeSelf includes the ancestor when it matches', () async {
    final nodes = await db.scoreDescendantsForTerms(
      'root',
      ['water'],
      includeSelf: true,
    );
    expect(nodes.map((n) => n.id), contains('root'));
  });

  test('orders by summed score descending', () async {
    final nodes = await db.scoreDescendantsForTerms('root', ['water', 'soft']);
    // c1: 0.9 + 0.4 = 1.3, c3: 0.8 + 0.3 = 1.1 lead the ranking.
    expect(nodes.first.id, 'c1');
    expect(nodes[1].id, 'c3');
  });

  test('returns empty for a leaf node without descendants', () async {
    final nodes = await db.scoreDescendantsForTerms('c1', ['water']);
    expect(nodes, isEmpty);
  });

  test('respects the limit', () async {
    final nodes =
        await db.scoreDescendantsForTerms('root', ['water'], limit: 2);
    expect(nodes, hasLength(2));
  });
}
