import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../domain/reader_notifier.dart';

class ReaderRepository {
  ReaderRepository(this._db);

  final AppDatabase _db;

  Future<String?> getSummary(String nodeId, String locale) =>
      _db.summaryForNode(nodeId, locale);

  Future<List<Term>> getTerms(String nodeId, {int limit = 50}) =>
      _db.termsForNode(nodeId, limit: limit);

  Future<Node?> getNode(String id) => _db.nodeById(id);

  Future<List<Node>> getChildren(String parentId) => _db.childrenOf(parentId);
}

final readerRepositoryProvider = Provider<ReaderRepository>((ref) {
  return ReaderRepository(ref.watch(appDatabaseProvider));
});
