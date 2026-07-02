// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordTerm _$WordTermFromJson(Map<String, dynamic> json) => _WordTerm(
  term: json['term'] as String,
  score: (json['score'] as num).toDouble(),
  count: (json['count'] as num).toInt(),
  kind: json['kind'] as String? ?? 'word',
);

Map<String, dynamic> _$WordTermToJson(_WordTerm instance) => <String, dynamic>{
  'term': instance.term,
  'score': instance.score,
  'count': instance.count,
  'kind': instance.kind,
};

_NodeWords _$NodeWordsFromJson(Map<String, dynamic> json) => _NodeWords(
  nodeId: json['nodeId'] as String,
  terms: (json['terms'] as List<dynamic>)
      .map((e) => WordTerm.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NodeWordsToJson(_NodeWords instance) =>
    <String, dynamic>{'nodeId': instance.nodeId, 'terms': instance.terms};
