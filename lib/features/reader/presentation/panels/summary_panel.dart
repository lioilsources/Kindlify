import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/original_text.dart';
import '../../domain/reader_notifier.dart';

class SummaryPanel extends ConsumerWidget {
  const SummaryPanel({super.key, required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readerNotifierProvider(bookSlug));
    if (ref.watch(showOriginalProvider(bookSlug))) {
      return _OriginalText(bookSlug: bookSlug);
    }

    return Stack(
      children: [
        if (state.isRagLoading)
          const Positioned(
            top: 8,
            right: 8,
            child: _RagLoadingIndicator(),
          ),
        if (state.isRagActive && !state.isRagLoading)
          const Positioned(
            top: 8,
            right: 8,
            child: _RagBadge(),
          ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _SummaryContent(
            key: ValueKey(state.summaryVersion),
            summary: state.displaySummary,
            isEmpty: state.currentNodeId.isEmpty,
            onNodeTap: (nodeId) => ref
                .read(readerNotifierProvider(bookSlug).notifier)
                .jumpTo(nodeId),
          ),
        ),
      ],
    );
  }
}

class _SummaryContent extends StatelessWidget {
  const _SummaryContent({
    super.key,
    required this.summary,
    required this.isEmpty,
    required this.onNodeTap,
  });

  final String? summary;
  final bool isEmpty;
  final ValueChanged<String> onNodeTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (isEmpty) {
      return Center(
        child: Text(
          'Vyberte knihu pro začátek',
          style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
        ),
      );
    }

    // null = summary not computed yet (loading); empty = nothing available.
    if (summary == null) {
      return Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: theme.colorScheme.primary,
        ),
      );
    }

    if (summary!.isEmpty) {
      return Center(
        child: Text(
          'Souhrn není k dispozici',
          style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
        ),
      );
    }

    return Markdown(
      data: summary!,
      onTapLink: (text, href, title) {
        const scheme = 'node://';
        if (href != null && href.startsWith(scheme)) {
          onNodeTap(href.substring(scheme.length));
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      styleSheet: MarkdownStyleSheet(
        a: TextStyle(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
        p: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: theme.colorScheme.onSurface,
        ),
        h1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.onSurface,
        ),
        h2: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _RagBadge extends StatelessWidget {
  const _RagBadge();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiary.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.tertiary.withValues(alpha: 0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.auto_awesome, size: 11, color: theme.colorScheme.tertiary),
          const SizedBox(width: 3),
          Text(
            'AI · živě',
            style: TextStyle(
              fontSize: 10,
              color: theme.colorScheme.tertiary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _RagLoadingIndicator extends StatelessWidget {
  const _RagLoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      height: 16,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}

/// Reading mode: the original text of the current node, selectable.
class _OriginalText extends ConsumerWidget {
  const _OriginalText({required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final text = ref.watch(currentOriginalTextProvider(bookSlug));
    return text.when(
      loading: () => Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: theme.colorScheme.primary,
        ),
      ),
      error: (e, _) => Center(child: Text('Chyba: $e')),
      data: (t) => t.isEmpty
          ? Center(
              child: Text(
                'Text originálu u tohoto místa není — vyberte kapitolu',
                style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
              ),
            )
          : SingleChildScrollView(
              key: const ValueKey('original-text'),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: SelectableText(
                t,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
    );
  }
}
