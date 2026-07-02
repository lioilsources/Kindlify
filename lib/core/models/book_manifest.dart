import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_manifest.freezed.dart';
part 'book_manifest.g.dart';

@freezed
abstract class TreeNode with _$TreeNode {
  const factory TreeNode({
    required String id,
    required String kind,
    required String label,
    @Default(0) int byteStart,
    @Default(0) int byteEnd,
    @Default([]) List<TreeNode> children,
  }) = _TreeNode;

  factory TreeNode.fromJson(Map<String, dynamic> json) =>
      _$TreeNodeFromJson(json);
}

@freezed
abstract class BookManifest with _$BookManifest {
  const factory BookManifest({
    required String schemaVersion,
    required String slug,
    required String title,
    required String sourceLanguage,
    required String script,
    @Default('') String pipelineVersion,
    @Default('') String generatedAt,
    required TreeNode tree,
  }) = _BookManifest;

  factory BookManifest.fromJson(Map<String, dynamic> json) =>
      _$BookManifestFromJson(json);
}
