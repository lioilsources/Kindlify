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
      setSummary(await db.summaryForNode(nodeId, 'cs'));
      return;
    }

    // Find best-matching nodes BELOW the current node (depth + 1).
    final currentNode = await db.nodeById(nodeId);
    final childDepth = (currentNode?.depth ?? 0) + 1;
    final scored = await db.scoreNodesForTerms(
      state.bookSlug,
      state.selectedWords,
      minDepth: childDepth,
    );

    if (scored.isEmpty) {
      final summary = await db.summaryForNode(nodeId, 'cs');
      setSummary('_Žádná sekce neobsahuje všechna vybraná slova._\n\n${summary ?? ''}');
      return;
    }

    // Build composite summary from top 3 matching nodes.
    final buffer = StringBuffer();
    for (final entry in scored.take(3)) {
      final summary = await db.summaryForNode(entry.id, 'cs');
      if (summary != null && summary.isNotEmpty) {
        buffer.writeln('**${entry.label}**\n\n$summary\n');
      }
    }
    setSummary(buffer.toString().trim());
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
