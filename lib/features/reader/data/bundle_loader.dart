import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/models/book_manifest.dart';
import '../../../core/models/bundle.dart';
import '../domain/reader_notifier.dart';

class BundleLoader {
  BundleLoader(this._db);

  final AppDatabase _db;

  /// Load a demo bundle from Flutter assets: assets/bundles/{slug}.json
  Future<void> loadFromAssets(String slug) async {
    final jsonStr = await rootBundle.loadString('assets/bundles/$slug.json');
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final bundle = BookBundle.fromJson(json);
    await _importBundle(bundle);
  }

  Future<void> _importBundle(BookBundle bundle) async {
    final manifest = bundle.manifest;
    final slug = manifest.slug;

    // Remove any previous version of this book.
    await _db.deleteBook(slug);

    // Insert the book record.
    await _db.upsertBook(
      BooksCompanion.insert(
        slug: slug,
        title: manifest.title,
        sourceLanguage: manifest.sourceLanguage,
        script: manifest.script,
        pipelineVersion: Value(manifest.pipelineVersion),
        generatedAt: Value(manifest.generatedAt),
        downloadedAt: DateTime.now().millisecondsSinceEpoch,
        totalNodes: Value(_countNodes(manifest.tree)),
      ),
    );

    // Walk the tree and insert nodes recursively.
    await _insertNode(manifest.tree, slug, null, 0);

    // Insert terms.
    for (final entry in bundle.words.nodes.entries) {
      for (final term in entry.value.terms) {
        await _db.insertTerm(
          TermsCompanion.insert(
            nodeId: entry.key,
            bookSlug: slug,
            term: term.term,
            score: term.score,
            count: term.count,
            kind: term.kind,
          ),
        );
      }
    }

    // Insert summaries.
    for (final nodeEntry in bundle.summaries.entries) {
      for (final localeEntry in nodeEntry.value.entries) {
        await _db.upsertSummary(
          SummariesCompanion.insert(
            nodeId: nodeEntry.key,
            locale: localeEntry.key,
            content: localeEntry.value,
          ),
        );
      }
    }
  }

  Future<void> _insertNode(
    TreeNode node,
    String bookSlug,
    String? parentId,
    int depth,
  ) async {
    await _db.insertNode(
      NodesCompanion.insert(
        id: node.id,
        bookSlug: bookSlug,
        kind: node.kind,
        label: node.label,
        parentId: Value(parentId),
        byteStart: Value(node.byteStart),
        byteEnd: Value(node.byteEnd),
        depth: Value(depth),
      ),
    );
    for (final child in node.children) {
      await _insertNode(child, bookSlug, node.id, depth + 1);
    }
  }

  int _countNodes(TreeNode node) {
    return 1 + node.children.fold(0, (sum, c) => sum + _countNodes(c));
  }
}

final bundleLoaderProvider = Provider<BundleLoader>((ref) {
  return BundleLoader(ref.watch(appDatabaseProvider));
});
