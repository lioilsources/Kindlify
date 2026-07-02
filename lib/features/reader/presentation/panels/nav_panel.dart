import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/reader_notifier.dart';
import '../../domain/reader_state.dart';

class NavPanel extends ConsumerWidget {
  const NavPanel({super.key, required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readerNotifierProvider(bookSlug));
    final siblingsAsync = ref.watch(filteredSiblingsProvider(bookSlug));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _BreadcrumbBar(state: state, bookSlug: bookSlug),
        const Divider(height: 1),
        Expanded(
          child: siblingsAsync.when(
            data: (siblings) => _SiblingList(
              siblings: siblings,
              currentNodeId: state.currentNodeId,
              currentPath: state.currentPath,
              hasFilter: state.selectedWords.isNotEmpty,
              bookSlug: bookSlug,
              onNavigate: (id) =>
                  ref.read(readerNotifierProvider(bookSlug).notifier).navigateTo(id),
              onClearFilter: () =>
                  ref.read(readerNotifierProvider(bookSlug).notifier).clearWords(),
            ),
            loading: () =>
                const Center(child: CircularProgressIndicator(strokeWidth: 2)),
            error: (e, _) => Text('Error: $e'),
          ),
        ),
      ],
    );
  }
}

class _BreadcrumbBar extends ConsumerWidget {
  const _BreadcrumbBar({required this.state, required this.bookSlug});

  final ReaderState state;
  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    if (state.currentPath.isEmpty) return const SizedBox.shrink();

    final notifier = ref.read(readerNotifierProvider(bookSlug).notifier);

    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        itemCount: state.currentPath.length,
        separatorBuilder: (context, _) => Icon(
          Icons.chevron_right,
          size: 16,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        itemBuilder: (context, i) {
          final nodeId = state.currentPath[i];
          final isCurrent = i == state.currentPath.length - 1;
          return FutureBuilder<Node?>(
            future: ref.read(appDatabaseProvider).nodeById(nodeId),
            builder: (context, snap) {
              final label = snap.data?.label ?? '…';
              // All chips are tappable — ancestors navigate up, current reloads summary.
              return ActionChip(
                label: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isCurrent ? FontWeight.w600 : FontWeight.w400,
                    color: isCurrent
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                backgroundColor: isCurrent
                    ? theme.colorScheme.primaryContainer.withValues(alpha: 0.5)
                    : Colors.transparent,
                side: isCurrent
                    ? BorderSide(color: theme.colorScheme.primary.withValues(alpha: 0.4))
                    : BorderSide.none,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                visualDensity: VisualDensity.compact,
                onPressed: () => notifier.navigateTo(nodeId),
              );
            },
          );
        },
      ),
    );
  }
}

class _SiblingList extends StatelessWidget {
  const _SiblingList({
    required this.siblings,
    required this.currentNodeId,
    required this.currentPath,
    required this.hasFilter,
    required this.bookSlug,
    required this.onNavigate,
    required this.onClearFilter,
  });

  final List<dynamic> siblings;
  final String currentNodeId;
  final List<String> currentPath;
  final bool hasFilter;
  final String bookSlug;
  final void Function(String) onNavigate;
  final VoidCallback onClearFilter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (siblings.isEmpty && hasFilter) {
      return Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text(
                'Žádná sekce neobsahuje všechna vybraná slova',
                style: TextStyle(
                  fontSize: 12,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: onClearFilter,
            child: const Text('Zrušit', style: TextStyle(fontSize: 12)),
          ),
        ],
      );
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      itemCount: siblings.length,
      itemBuilder: (context, i) {
        final item = siblings[i];
        final Node node;
        final bool matches;
        if (item is ({Node node, bool matches})) {
          node = item.node;
          matches = item.matches;
        } else {
          node = item as Node;
          matches = true;
        }
        // A sibling is "current" if it is the last node in the path OR
        // if the current node is one of its descendants (i.e. path contains it).
        final isCurrent = node.id == currentNodeId || currentPath.contains(node.id);
        return Opacity(
          opacity: matches ? 1.0 : 0.35,
          child: Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ActionChip(
              label: Text(
                node.label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isCurrent ? FontWeight.w600 : FontWeight.w400,
                  color: isCurrent
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurface,
                ),
              ),
              backgroundColor: isCurrent
                  ? theme.colorScheme.primaryContainer.withValues(alpha: 0.5)
                  : theme.colorScheme.surfaceContainerLow,
              side: isCurrent
                  ? BorderSide(color: theme.colorScheme.primary.withValues(alpha: 0.4))
                  : BorderSide.none,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              visualDensity: VisualDensity.compact,
              onPressed: matches ? () => onNavigate(node.id) : () {},
            ),
          ),
        );
      },
    );
  }
}
