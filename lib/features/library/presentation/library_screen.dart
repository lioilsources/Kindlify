import 'package:flutter/material.dart';
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

/// Demo bundles shipped as Flutter assets: (asset file name, button label).
/// The book slug in the manifest is the asset name with hyphens instead of
/// underscores (e.g. dao_de_jing.json -> dao-de-jing).
const _demoBundles = [
  ('dao_de_jing', 'Tao Te Ťing'),
  ('analects', 'Hovory (Konfucius)'),
];

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

class _DemoButtons extends StatelessWidget {
  const _DemoButtons({required this.onLoadDemo});

  final ValueChanged<String> onLoadDemo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final (asset, label) in _demoBundles)
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
    return Center(
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
