import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../reader/data/bundle_loader.dart';
import '../../reader/domain/reader_notifier.dart';

part 'library_screen.g.dart';

@riverpod
Future<List<Book>> localBooks(Ref ref) {
  return ref.watch(appDatabaseProvider).allBooks();
}

/// Bundles shipped as Flutter assets: (asset file name, button label).
/// The book slug in the manifest is the asset name with hyphens instead of
/// underscores (e.g. dao_de_jing.json -> dao-de-jing).
///
/// The list comes from `assets/bundles/index.json`, written by
/// `rag/kindlify_sync.py` in WorldLibraryProject — new works from the
/// library show up without touching Dart. The two hand-written demos are
/// the fallback when the index is missing or unreadable.
const _fallbackBundles = [
  ('dao_de_jing', 'Tao Te Ťing'),
  ('analects', 'Hovory (Konfucius)'),
];

final bundledBooksProvider = FutureProvider<List<(String, String)>>((
  ref,
) async {
  try {
    final index =
        jsonDecode(await rootBundle.loadString('assets/bundles/index.json'))
            as Map<String, dynamic>;
    final entries = [
      for (final e in index['bundles'] as List<dynamic>)
        ((e as Map<String, dynamic>)['asset'] as String, e['label'] as String),
    ];
    return entries.isEmpty ? _fallbackBundles : entries;
  } catch (_) {
    return _fallbackBundles;
  }
});

class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksAsync = ref.watch(localBooksProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Kindlify')),
      body: booksAsync.when(
        data: (books) {
          if (books.isEmpty) {
            return _EmptyLibrary(
              onLoadDemo: (asset) => _loadDemo(context, ref, asset),
            );
          }
          return _BookGrid(
            books: books,
            onLoadDemo: (asset) => _loadDemo(context, ref, asset),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Chyba: $e')),
      ),
    );
  }

  Future<void> _loadDemo(
    BuildContext context,
    WidgetRef ref,
    String assetName,
  ) async {
    final messenger = ScaffoldMessenger.of(context);

    messenger.showSnackBar(
      const SnackBar(
        content: Text('Načítám ukázkovou knihu…'),
        duration: Duration(seconds: 10),
      ),
    );

    try {
      await ref.read(bundleLoaderProvider).loadFromAssets(assetName);
      ref.invalidate(localBooksProvider);
      messenger.hideCurrentSnackBar();
      final slug = assetName.replaceAll('_', '-');
      if (context.mounted) context.push('/reader/$slug');
    } catch (e) {
      messenger.hideCurrentSnackBar();
      messenger.showSnackBar(SnackBar(content: Text('Chyba: $e')));
    }
  }
}

class _DemoButtons extends ConsumerWidget {
  const _DemoButtons({required this.onLoadDemo});

  final ValueChanged<String> onLoadDemo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bundles = ref.watch(bundledBooksProvider).value ?? _fallbackBundles;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final (asset, label) in bundles)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: OutlinedButton.icon(
              onPressed: () => onLoadDemo(asset),
              icon: const Icon(Icons.add),
              label: Text('Načíst $label'),
            ),
          ),
      ],
    );
  }
}

class _EmptyLibrary extends StatelessWidget {
  const _EmptyLibrary({required this.onLoadDemo});

  final ValueChanged<String> onLoadDemo;

  @override
  Widget build(BuildContext context) {
    // Scrollable: the library index lists dozens of works, which would
    // overflow a plain centered Column.
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.menu_book_outlined,
              size: 72,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            const SizedBox(height: 16),
            Text(
              'Žádné knihy',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            _DemoButtons(onLoadDemo: onLoadDemo),
          ],
        ),
      ),
    );
  }
}

class _BookGrid extends StatelessWidget {
  const _BookGrid({required this.books, required this.onLoadDemo});

  final List<Book> books;
  final ValueChanged<String> onLoadDemo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ...books.map(
          (b) => Card(
            child: ListTile(
              title: Text(b.title),
              subtitle: Text('${b.sourceLanguage} · ${b.script}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => context.push('/reader/${b.slug}'),
            ),
          ),
        ),
        const SizedBox(height: 24),
        _DemoButtons(onLoadDemo: onLoadDemo),
      ],
    );
  }
}
