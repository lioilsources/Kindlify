// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_manifest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TreeNode _$TreeNodeFromJson(Map<String, dynamic> json) => _TreeNode(
  id: json['id'] as String,
  kind: json['kind'] as String,
  label: json['label'] as String,
  byteStart: (json['byteStart'] as num?)?.toInt() ?? 0,
  byteEnd: (json['byteEnd'] as num?)?.toInt() ?? 0,
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => TreeNode.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TreeNodeToJson(_TreeNode instance) => <String, dynamic>{
  'id': instance.id,
  'kind': instance.kind,
  'label': instance.label,
  'byteStart': instance.byteStart,
  'byteEnd': instance.byteEnd,
  'children': instance.children,
};

_BookManifest _$BookManifestFromJson(Map<String, dynamic> json) =>
    _BookManifest(
      schemaVersion: json['schemaVersion'] as String,
      slug: json['slug'] as String,
      title: json['title'] as String,
      sourceLanguage: json['sourceLanguage'] as String,
      script: json['script'] as String,
      pipelineVersion: json['pipelineVersion'] as String? ?? '',
      generatedAt: json['generatedAt'] as String? ?? '',
      tree: TreeNode.fromJson(json['tree'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookManifestToJson(_BookManifest instance) =>
    <String, dynamic>{
      'schemaVersion': instance.schemaVersion,
      'slug': instance.slug,
      'title': instance.title,
      'sourceLanguage': instance.sourceLanguage,
      'script': instance.script,
      'pipelineVersion': instance.pipelineVersion,
      'generatedAt': instance.generatedAt,
      'tree': instance.tree,
    };
