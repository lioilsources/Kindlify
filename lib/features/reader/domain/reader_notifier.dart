import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import 'reader_state.dart';

part 'reader_notifier.g.dart';

@riverpod
class ReaderNotifier extends _$ReaderNotifier {
  Timer? _debounceTimer;

  @override
  ReaderState build(String bookSlug) {
    ref.onDispose(() => _debounceTimer?.cancel());
    return ReaderState(
      bookSlug: bookSlug,
      currentPath: [],
      selectedWords: [],
      pinnedWords: [],
    );
  }

  /// Called once the root node is known after DB load.
  void setRootNode(String rootNodeId) {
    if (state.currentPath.isEmpty) {
      state = state.copyWith(currentPath: [rootNodeId]);
      _loadPrecomputedSummary();
    }
  }

  void navigateTo(String nodeId) {
    // Find position in existing path (user tapped a breadcrumb ancestor).
    final idx = state.currentPath.indexOf(nodeId);
    final newPath =
        idx >= 0 ? state.currentPath.sublist(0, idx + 1) : [...state.currentPath, nodeId];
    state = state.copyWith(currentPath: newPath);
    _loadPrecomputedSummary();
  }

  void navigateUp() {
    if (state.currentPath.length <= 1) return;
    state = state.copyWith(
      currentPath: state.currentPath.sublist(0, state.currentPath.length - 1),
    );
    _loadPrecomputedSummary();
  }

  /// Jump to an arbitrary node anywhere in the tree (e.g. a `node://` link
  /// in a composite summary). Rebuilds the whole breadcrumb path by walking
  /// parent links up to the root — [navigateTo] only supports moves within
  /// the current path or into a child.
  Future<void> jumpTo(String nodeId) async {
    final db = ref.read(appDatabaseProvider);
    final path = <String>[nodeId];
    var node = await db.nodeById(nodeId);
    if (node == null) return;
    while (node!.parentId != null) {
      final parent = await db.nodeById(node.parentId!);
      if (parent == null) break;
      path.insert(0, parent.id);
      node = parent;
    }
    state = state.copyWith(currentPath: path);
    await _updateSummary();
  }

  void toggleWord(String term) {
    final isSelected = state.selectedWords.contains(term);
    final List<String> newSelected;
    final List<String> newPinned;
    if (isSelected) {
      newSelected = state.selectedWords.where((w) => w != term).toList();
      newPinned = state.pinnedWords.where((w) => w != term).toList();
    } else {
      newSelected = [...state.selectedWords, term];
      newPinned =
          state.pinnedWords.contains(term)
              ? state.pinnedWords
              : [...state.pinnedWords, term];
    }
    state = state.copyWith(selectedWords: newSelected, pinnedWords: newPinned);
    _scheduleRagOrSummary();
  }

  void clearWords() {
    _debounceTimer?.cancel();
    state = state.copyWith(
      selectedWords: [],
      pinnedWords: [],
      isRagLoading: false,
      isRagActive: false,
    );
    _loadPrecomputedSummary();
  }

  void _scheduleRagOrSummary() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 400), _updateSummary);
  }

  Future<void> _updateSummary() async {
    final nodeId = state.currentNodeId;
    if (nodeId.isEmpty) return;
    final db = ref.read(appDatabaseProvider);

    void setSummary(String? text) {
      state = state.copyWith(
        displaySummary: text,
        summaryVersion: state.summaryVersion + 1,
        isRagActive: false,
      );
    }

    if (state.selectedWords.isEmpty) {
      setSummary(await _summaryWithFallback(nodeId));
      return;
    }

    // Find best-matching nodes in the subtree of the current node.
    final scored = await db.scoreDescendantsForTerms(
      nodeId,
      state.selectedWords,
    );

    if (scored.isNotEmpty) {
      setSummary(await _compositeSummary(scored));
      return;
    }

    // Nothing below the current node (typically a leaf chapter): show the
    // node's own summary plus intent-matching nodes from the rest of the book.
    // Ancestors are excluded — they are already visible in the breadcrumb.
    final ownSummary = await _summaryWithFallback(nodeId);
    final rootId = state.currentPath.first;
    final related = (await db.scoreDescendantsForTerms(
      rootId,
      state.selectedWords,
      includeSelf: true,
    ))
        .where((n) => !state.currentPath.contains(n.id))
        .toList();

    if (related.isEmpty) {
      setSummary('_Vybraná slova se jinde v knize nevyskytují._\n\n$ownSummary');
      return;
    }

    final relatedComposite = await _compositeSummary(related);
    setSummary(
      '$ownSummary\n\n### Související jinde v knize\n\n$relatedComposite',
    );
  }

  /// Composite of the top-scored nodes that actually have a summary,
  /// each headed by a tappable `node://` link for non-linear jumps.
  Future<String> _compositeSummary(List<Node> scored, {int max = 3}) async {
    final db = ref.read(appDatabaseProvider);
    final buffer = StringBuffer();
    var written = 0;
    for (final node in scored) {
      if (written >= max) break;
      final summary = await db.summaryForNode(node.id, 'cs');
      if (summary != null && summary.isNotEmpty) {
        buffer.writeln('**[${node.label}](node://${node.id})**\n\n$summary\n');
        written++;
      }
    }
    return buffer.toString().trim();
  }

  /// Summary for [nodeId]; when missing, falls back to the nearest ancestor
  /// that has one (with a note), never to an empty value.
  Future<String> _summaryWithFallback(String nodeId) async {
    final db = ref.read(appDatabaseProvider);
    final own = await db.summaryForNode(nodeId, 'cs');
    if (own != null && own.isNotEmpty) return own;

    var node = await db.nodeById(nodeId);
    while (node?.parentId != null) {
      node = await db.nodeById(node!.parentId!);
      if (node == null) break;
      final ancestor = await db.summaryForNode(node.id, 'cs');
      if (ancestor != null && ancestor.isNotEmpty) {
        return '_Souhrn této části není k dispozici — zobrazuji '
            '${node.label}._\n\n$ancestor';
      }
    }
    return '_Souhrn není k dispozici._';
  }

  Future<void> _loadPrecomputedSummary() => _updateSummary();
}

// --- Derived providers ---

@riverpod
Future<List<dynamic>> currentTerms(Ref ref, String bookSlug) async {
  final notifier = ref.watch(readerNotifierProvider(bookSlug));
  final nodeId = notifier.currentNodeId;
  if (nodeId.isEmpty) return [];
  final db = ref.watch(appDatabaseProvider);
  return db.termsForNode(nodeId);
}

/// Returns children of the current node — what the user can navigate into.
/// When word filters are active, marks which children contain all selected words.
@riverpod
Future<List<dynamic>> filteredSiblings(Ref ref, String bookSlug) async {
  final state = ref.watch(readerNotifierProvider(bookSlug));
  final db = ref.watch(appDatabaseProvider);

  if (state.currentPath.isEmpty) return [];

  final children = await db.childrenOf(state.currentNodeId);
  if (children.isEmpty) return [];
  if (state.selectedWords.isEmpty) return children;

  // Children are all one depth deeper than current node.
  final currentNode = await db.nodeById(state.currentNodeId);
  final childDepth = (currentNode?.depth ?? 0) + 1;

  final matchingIds = await db.nodesContainingAllTerms(
    bookSlug,
    state.selectedWords,
    childDepth,
  );
  final matchingSet = matchingIds.toSet();

  return children
      .map((n) => (node: n, matches: matchingSet.contains(n.id)))
      .toList();
}

// Provider for the database singleton.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});
