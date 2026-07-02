// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_manifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TreeNode {

 String get id; String get kind; String get label; int get byteStart; int get byteEnd; List<TreeNode> get children;
/// Create a copy of TreeNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeNodeCopyWith<TreeNode> get copyWith => _$TreeNodeCopyWithImpl<TreeNode>(this as TreeNode, _$identity);

  /// Serializes this TreeNode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeNode&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.label, label) || other.label == label)&&(identical(other.byteStart, byteStart) || other.byteStart == byteStart)&&(identical(other.byteEnd, byteEnd) || other.byteEnd == byteEnd)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,label,byteStart,byteEnd,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'TreeNode(id: $id, kind: $kind, label: $label, byteStart: $byteStart, byteEnd: $byteEnd, children: $children)';
}


}

/// @nodoc
abstract mixin class $TreeNodeCopyWith<$Res>  {
  factory $TreeNodeCopyWith(TreeNode value, $Res Function(TreeNode) _then) = _$TreeNodeCopyWithImpl;
@useResult
$Res call({
 String id, String kind, String label, int byteStart, int byteEnd, List<TreeNode> children
});




}
/// @nodoc
class _$TreeNodeCopyWithImpl<$Res>
    implements $TreeNodeCopyWith<$Res> {
  _$TreeNodeCopyWithImpl(this._self, this._then);

  final TreeNode _self;
  final $Res Function(TreeNode) _then;

/// Create a copy of TreeNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? byteStart = null,Object? byteEnd = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,byteStart: null == byteStart ? _self.byteStart : byteStart // ignore: cast_nullable_to_non_nullable
as int,byteEnd: null == byteEnd ? _self.byteEnd : byteEnd // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<TreeNode>,
  ));
}

}


/// Adds pattern-matching-related methods to [TreeNode].
extension TreeNodePatterns on TreeNode {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeNode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeNode() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeNode value)  $default,){
final _that = this;
switch (_that) {
case _TreeNode():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeNode value)?  $default,){
final _that = this;
switch (_that) {
case _TreeNode() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String kind,  String label,  int byteStart,  int byteEnd,  List<TreeNode> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeNode() when $default != null:
return $default(_that.id,_that.kind,_that.label,_that.byteStart,_that.byteEnd,_that.children);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String kind,  String label,  int byteStart,  int byteEnd,  List<TreeNode> children)  $default,) {final _that = this;
switch (_that) {
case _TreeNode():
return $default(_that.id,_that.kind,_that.label,_that.byteStart,_that.byteEnd,_that.children);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String kind,  String label,  int byteStart,  int byteEnd,  List<TreeNode> children)?  $default,) {final _that = this;
switch (_that) {
case _TreeNode() when $default != null:
return $default(_that.id,_that.kind,_that.label,_that.byteStart,_that.byteEnd,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreeNode implements TreeNode {
  const _TreeNode({required this.id, required this.kind, required this.label, this.byteStart = 0, this.byteEnd = 0, final  List<TreeNode> children = const []}): _children = children;
  factory _TreeNode.fromJson(Map<String, dynamic> json) => _$TreeNodeFromJson(json);

@override final  String id;
@override final  String kind;
@override final  String label;
@override@JsonKey() final  int byteStart;
@override@JsonKey() final  int byteEnd;
 final  List<TreeNode> _children;
@override@JsonKey() List<TreeNode> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of TreeNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeNodeCopyWith<_TreeNode> get copyWith => __$TreeNodeCopyWithImpl<_TreeNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreeNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeNode&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.label, label) || other.label == label)&&(identical(other.byteStart, byteStart) || other.byteStart == byteStart)&&(identical(other.byteEnd, byteEnd) || other.byteEnd == byteEnd)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,label,byteStart,byteEnd,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'TreeNode(id: $id, kind: $kind, label: $label, byteStart: $byteStart, byteEnd: $byteEnd, children: $children)';
}


}

/// @nodoc
abstract mixin class _$TreeNodeCopyWith<$Res> implements $TreeNodeCopyWith<$Res> {
  factory _$TreeNodeCopyWith(_TreeNode value, $Res Function(_TreeNode) _then) = __$TreeNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String kind, String label, int byteStart, int byteEnd, List<TreeNode> children
});




}
/// @nodoc
class __$TreeNodeCopyWithImpl<$Res>
    implements _$TreeNodeCopyWith<$Res> {
  __$TreeNodeCopyWithImpl(this._self, this._then);

  final _TreeNode _self;
  final $Res Function(_TreeNode) _then;

/// Create a copy of TreeNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? byteStart = null,Object? byteEnd = null,Object? children = null,}) {
  return _then(_TreeNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,byteStart: null == byteStart ? _self.byteStart : byteStart // ignore: cast_nullable_to_non_nullable
as int,byteEnd: null == byteEnd ? _self.byteEnd : byteEnd // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<TreeNode>,
  ));
}


}


/// @nodoc
mixin _$BookManifest {

 String get schemaVersion; String get slug; String get title; String get sourceLanguage; String get script; String get pipelineVersion; String get generatedAt; TreeNode get tree;
/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookManifestCopyWith<BookManifest> get copyWith => _$BookManifestCopyWithImpl<BookManifest>(this as BookManifest, _$identity);

  /// Serializes this BookManifest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookManifest&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.sourceLanguage, sourceLanguage) || other.sourceLanguage == sourceLanguage)&&(identical(other.script, script) || other.script == script)&&(identical(other.pipelineVersion, pipelineVersion) || other.pipelineVersion == pipelineVersion)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.tree, tree) || other.tree == tree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,slug,title,sourceLanguage,script,pipelineVersion,generatedAt,tree);

@override
String toString() {
  return 'BookManifest(schemaVersion: $schemaVersion, slug: $slug, title: $title, sourceLanguage: $sourceLanguage, script: $script, pipelineVersion: $pipelineVersion, generatedAt: $generatedAt, tree: $tree)';
}


}

/// @nodoc
abstract mixin class $BookManifestCopyWith<$Res>  {
  factory $BookManifestCopyWith(BookManifest value, $Res Function(BookManifest) _then) = _$BookManifestCopyWithImpl;
@useResult
$Res call({
 String schemaVersion, String slug, String title, String sourceLanguage, String script, String pipelineVersion, String generatedAt, TreeNode tree
});


$TreeNodeCopyWith<$Res> get tree;

}
/// @nodoc
class _$BookManifestCopyWithImpl<$Res>
    implements $BookManifestCopyWith<$Res> {
  _$BookManifestCopyWithImpl(this._self, this._then);

  final BookManifest _self;
  final $Res Function(BookManifest) _then;

/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? slug = null,Object? title = null,Object? sourceLanguage = null,Object? script = null,Object? pipelineVersion = null,Object? generatedAt = null,Object? tree = null,}) {
  return _then(_self.copyWith(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sourceLanguage: null == sourceLanguage ? _self.sourceLanguage : sourceLanguage // ignore: cast_nullable_to_non_nullable
as String,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,pipelineVersion: null == pipelineVersion ? _self.pipelineVersion : pipelineVersion // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,tree: null == tree ? _self.tree : tree // ignore: cast_nullable_to_non_nullable
as TreeNode,
  ));
}
/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TreeNodeCopyWith<$Res> get tree {
  
  return $TreeNodeCopyWith<$Res>(_self.tree, (value) {
    return _then(_self.copyWith(tree: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookManifest].
extension BookManifestPatterns on BookManifest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookManifest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookManifest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookManifest value)  $default,){
final _that = this;
switch (_that) {
case _BookManifest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookManifest value)?  $default,){
final _that = this;
switch (_that) {
case _BookManifest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String schemaVersion,  String slug,  String title,  String sourceLanguage,  String script,  String pipelineVersion,  String generatedAt,  TreeNode tree)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookManifest() when $default != null:
return $default(_that.schemaVersion,_that.slug,_that.title,_that.sourceLanguage,_that.script,_that.pipelineVersion,_that.generatedAt,_that.tree);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String schemaVersion,  String slug,  String title,  String sourceLanguage,  String script,  String pipelineVersion,  String generatedAt,  TreeNode tree)  $default,) {final _that = this;
switch (_that) {
case _BookManifest():
return $default(_that.schemaVersion,_that.slug,_that.title,_that.sourceLanguage,_that.script,_that.pipelineVersion,_that.generatedAt,_that.tree);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String schemaVersion,  String slug,  String title,  String sourceLanguage,  String script,  String pipelineVersion,  String generatedAt,  TreeNode tree)?  $default,) {final _that = this;
switch (_that) {
case _BookManifest() when $default != null:
return $default(_that.schemaVersion,_that.slug,_that.title,_that.sourceLanguage,_that.script,_that.pipelineVersion,_that.generatedAt,_that.tree);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookManifest implements BookManifest {
  const _BookManifest({required this.schemaVersion, required this.slug, required this.title, required this.sourceLanguage, required this.script, this.pipelineVersion = '', this.generatedAt = '', required this.tree});
  factory _BookManifest.fromJson(Map<String, dynamic> json) => _$BookManifestFromJson(json);

@override final  String schemaVersion;
@override final  String slug;
@override final  String title;
@override final  String sourceLanguage;
@override final  String script;
@override@JsonKey() final  String pipelineVersion;
@override@JsonKey() final  String generatedAt;
@override final  TreeNode tree;

/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookManifestCopyWith<_BookManifest> get copyWith => __$BookManifestCopyWithImpl<_BookManifest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookManifestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookManifest&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.sourceLanguage, sourceLanguage) || other.sourceLanguage == sourceLanguage)&&(identical(other.script, script) || other.script == script)&&(identical(other.pipelineVersion, pipelineVersion) || other.pipelineVersion == pipelineVersion)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.tree, tree) || other.tree == tree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,slug,title,sourceLanguage,script,pipelineVersion,generatedAt,tree);

@override
String toString() {
  return 'BookManifest(schemaVersion: $schemaVersion, slug: $slug, title: $title, sourceLanguage: $sourceLanguage, script: $script, pipelineVersion: $pipelineVersion, generatedAt: $generatedAt, tree: $tree)';
}


}

/// @nodoc
abstract mixin class _$BookManifestCopyWith<$Res> implements $BookManifestCopyWith<$Res> {
  factory _$BookManifestCopyWith(_BookManifest value, $Res Function(_BookManifest) _then) = __$BookManifestCopyWithImpl;
@override @useResult
$Res call({
 String schemaVersion, String slug, String title, String sourceLanguage, String script, String pipelineVersion, String generatedAt, TreeNode tree
});


@override $TreeNodeCopyWith<$Res> get tree;

}
/// @nodoc
class __$BookManifestCopyWithImpl<$Res>
    implements _$BookManifestCopyWith<$Res> {
  __$BookManifestCopyWithImpl(this._self, this._then);

  final _BookManifest _self;
  final $Res Function(_BookManifest) _then;

/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? slug = null,Object? title = null,Object? sourceLanguage = null,Object? script = null,Object? pipelineVersion = null,Object? generatedAt = null,Object? tree = null,}) {
  return _then(_BookManifest(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sourceLanguage: null == sourceLanguage ? _self.sourceLanguage : sourceLanguage // ignore: cast_nullable_to_non_nullable
as String,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,pipelineVersion: null == pipelineVersion ? _self.pipelineVersion : pipelineVersion // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,tree: null == tree ? _self.tree : tree // ignore: cast_nullable_to_non_nullable
as TreeNode,
  ));
}

/// Create a copy of BookManifest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TreeNodeCopyWith<$Res> get tree {
  
  return $TreeNodeCopyWith<$Res>(_self.tree, (value) {
    return _then(_self.copyWith(tree: value));
  });
}
}

// dart format on
