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
              onLoadDemo: () => _loadDemo(context, ref),
            );
          }
          return _BookGrid(
            books: books,
            onLoadDemo: () => _loadDemo(context, ref),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Chyba: $e')),
      ),
    );
  }

  Future<void> _loadDemo(BuildContext context, WidgetRef ref) async {
    final messenger = ScaffoldMessenger.of(context);

    messenger.showSnackBar(
      const SnackBar(
        content: Text('Načítám ukázkovou knihu…'),
        duration: Duration(seconds: 10),
      ),
    );

    try {
      await ref
          .read(bundleLoaderProvider)
          .loadFromAssets('dao_de_jing');
      ref.invalidate(localBooksProvider);
      messenger.hideCurrentSnackBar();
      if (context.mounted) context.push('/reader/dao-de-jing');
    } catch (e) {
      messenger.hideCurrentSnackBar();
      messenger.showSnackBar(SnackBar(content: Text('Chyba: $e')));
    }
  }
}

class _EmptyLibrary extends StatelessWidget {
  const _EmptyLibrary({required this.onLoadDemo});

  final VoidCallback onLoadDemo;

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
          FilledButton.tonal(
            onPressed: onLoadDemo,
            child: const Text('Načíst ukázkovou knihu'),
          ),
        ],
      ),
    );
  }
}

class _BookGrid extends StatelessWidget {
  const _BookGrid({required this.books, required this.onLoadDemo});

  final List<Book> books;
  final VoidCallback onLoadDemo;

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
        OutlinedButton.icon(
          onPressed: onLoadDemo,
          icon: const Icon(Icons.add),
          label: const Text('Načíst ukázkovou knihu'),
        ),
      ],
    );
  }
}
