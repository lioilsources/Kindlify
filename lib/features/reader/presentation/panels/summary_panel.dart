import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/reader_notifier.dart';

class SummaryPanel extends ConsumerWidget {
  const SummaryPanel({super.key, required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readerNotifierProvider(bookSlug));

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
  });

  final String? summary;
  final bool isEmpty;

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

    if (summary == null || summary!.isEmpty) {
      return Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: theme.colorScheme.primary,
        ),
      );
    }

    return Markdown(
      data: summary!,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      styleSheet: MarkdownStyleSheet(
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
