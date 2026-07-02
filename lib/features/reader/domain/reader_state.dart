import 'package:freezed_annotation/freezed_annotation.dart';

part 'reader_state.freezed.dart';

@freezed
abstract class ReaderState with _$ReaderState {
  const factory ReaderState({
    required String bookSlug,
    // Ordered list of node IDs from root to current: [root, chapter, section]
    required List<String> currentPath,
    // Active word/phrase filters
    required List<String> selectedWords,
    // Pinned words stay visible in cloud even after re-navigation
    required List<String> pinnedWords,
    // Pre-computed or RAG-generated summary text
    @Default(null) String? displaySummary,
    // Incremented each time summary changes — used as AnimatedSwitcher key.
    @Default(0) int summaryVersion,
    @Default(false) bool isRagLoading,
    @Default(false) bool isRagActive,
    @Default(false) bool isOffline,
  }) = _ReaderState;

  const ReaderState._();

  String get currentNodeId => currentPath.isNotEmpty ? currentPath.last : '';

  bool isWordSelected(String term) => selectedWords.contains(term);
  bool isWordPinned(String term) => pinnedWords.contains(term);
}
