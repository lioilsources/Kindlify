import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/database/app_database.dart';
import '../data/bundle_loader.dart';
import '../domain/original_text.dart';
import '../domain/reader_notifier.dart';
import 'panels/nav_panel.dart';
import 'panels/summary_panel.dart';
import 'panels/word_cloud_panel.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  const ReaderScreen({super.key, required this.bookSlug});

  final String bookSlug;

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  @override
  void initState() {
    super.initState();
    // After the first frame, bootstrap the root node.
    WidgetsBinding.instance.addPostFrameCallback((_) => _bootstrapRoot());
  }

  Future<void> _bootstrapRoot() async {
    final db = ref.read(appDatabaseProvider);
    await ref.read(bundleLoaderProvider).ensureFresh(widget.bookSlug);
    final roots = await db.rootNodes(widget.bookSlug);
    if (roots.isNotEmpty && mounted) {
      ref
          .read(readerNotifierProvider(widget.bookSlug).notifier)
          .setRootNode(roots.first.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(readerNotifierProvider(widget.bookSlug));
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmall = screenHeight < 600;

    return Scaffold(
      appBar: AppBar(
        title: _BookTitle(bookSlug: widget.bookSlug),
        actions: [
          _OriginalToggle(bookSlug: widget.bookSlug),
          if (state.selectedWords.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.filter_alt_off),
              tooltip: 'Zrušit filtry',
              onPressed: () => ref
                  .read(readerNotifierProvider(widget.bookSlug).notifier)
                  .clearWords(),
            ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push('/settings'),
          ),
        ],
        bottom: state.selectedWords.isNotEmpty
            ? PreferredSize(
                preferredSize: const Size.fromHeight(36),
                child: _FilterChips(bookSlug: widget.bookSlug),
              )
            : null,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Panel 1 — Navigation
            Flexible(
              flex: isSmall ? 10 : 15,
              child: RepaintBoundary(
                child: NavPanel(bookSlug: widget.bookSlug),
              ),
            ),
            const Divider(height: 1),
            // Panel 2 — Word Cloud
            Flexible(
              flex: isSmall ? 50 : 55,
              child: RepaintBoundary(
                child: WordCloudPanel(bookSlug: widget.bookSlug),
              ),
            ),
            const Divider(height: 1),
            // Panel 3 — Summary: Expanded fills all remaining space to bottom
            Expanded(
              flex: isSmall ? 40 : 30,
              child: RepaintBoundary(
                child: SummaryPanel(bookSlug: widget.bookSlug),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookTitle extends ConsumerWidget {
  const _BookTitle({required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<Book?>(
      future: ref.read(appDatabaseProvider).bookBySlug(bookSlug),
      builder: (context, snap) {
        return Text(snap.data?.title ?? bookSlug);
      },
    );
  }
}

class _FilterChips extends ConsumerWidget {
  const _FilterChips({required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readerNotifierProvider(bookSlug));
    final notifier = ref.read(readerNotifierProvider(bookSlug).notifier);

    return SizedBox(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        children: state.selectedWords
            .map(
              (w) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: InputChip(
                  label: Text(w, style: const TextStyle(fontSize: 11)),
                  onDeleted: () => notifier.toggleWord(w),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

/// Souhrn ↔ originál. Shown only for books exported with original text.
class _OriginalToggle extends ConsumerWidget {
  const _OriginalToggle({required this.bookSlug});

  final String bookSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasText =
        ref.watch(bookHasOriginalTextProvider(bookSlug)).value ?? false;
    if (!hasText) return const SizedBox.shrink();
    final showOriginal = ref.watch(showOriginalProvider(bookSlug));
    return IconButton(
      icon: Icon(showOriginal ? Icons.notes : Icons.menu_book_outlined),
      tooltip: showOriginal ? 'Souhrn' : 'Originál',
      onPressed: () => ref.read(showOriginalProvider(bookSlug).notifier).state =
          !showOriginal,
    );
  }
}
