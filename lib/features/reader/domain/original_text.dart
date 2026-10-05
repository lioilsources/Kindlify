import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'reader_notifier.dart';

/// Reading mode: the summary panel shows the original-language text of the
/// current node instead of its Czech summary. Per book, off by default.
final showOriginalProvider = StateProvider.family<bool, String>(
  (ref, bookSlug) => false,
);

/// Whether the book was exported with original text at all — the toggle is
/// only offered then (large works ship summaries only).
final bookHasOriginalTextProvider = FutureProvider.family<bool, String>((
  ref,
  bookSlug,
) {
  return ref.watch(appDatabaseProvider).bookHasOriginalText(bookSlug);
});

/// Original text of the node the reader is on.
final currentOriginalTextProvider = FutureProvider.autoDispose
    .family<String, String>((ref, bookSlug) {
      final nodeId = ref.watch(
        readerNotifierProvider(bookSlug).select((s) => s.currentNodeId),
      );
      if (nodeId.isEmpty) return Future.value('');
      return ref.watch(appDatabaseProvider).originalTextFor(nodeId);
    });
