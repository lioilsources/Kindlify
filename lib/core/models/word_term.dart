import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_term.freezed.dart';
part 'word_term.g.dart';

@freezed
abstract class WordTerm with _$WordTerm {
  const factory WordTerm({
    required String term,
    required double score,
    required int count,
    @Default('word') String kind, // word | phrase | entity
  }) = _WordTerm;

  factory WordTerm.fromJson(Map<String, dynamic> json) =>
      _$WordTermFromJson(json);
}

@freezed
abstract class NodeWords with _$NodeWords {
  const factory NodeWords({
    required String nodeId,
    required List<WordTerm> terms,
  }) = _NodeWords;

  factory NodeWords.fromJson(Map<String, dynamic> json) =>
      _$NodeWordsFromJson(json);
}

@freezed
abstract class WordsBundle with _$WordsBundle {
  const factory WordsBundle({
    required Map<String, NodeWords> nodes,
  }) = _WordsBundle;

  factory WordsBundle.fromJson(Map<String, dynamic> json) {
    final raw = json['nodes'] as Map<String, dynamic>;
    final nodes = raw.map((k, v) {
      final termsRaw = (v as Map<String, dynamic>)['terms'] as List<dynamic>;
      final terms = termsRaw
          .map((t) => WordTerm.fromJson(t as Map<String, dynamic>))
          .toList();
      return MapEntry(k, NodeWords(nodeId: k, terms: terms));
    });
    return WordsBundle(nodes: nodes);
  }
}
