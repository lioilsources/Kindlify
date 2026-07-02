// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordTerm {

 String get term; double get score; int get count; String get kind;
/// Create a copy of WordTerm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordTermCopyWith<WordTerm> get copyWith => _$WordTermCopyWithImpl<WordTerm>(this as WordTerm, _$identity);

  /// Serializes this WordTerm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordTerm&&(identical(other.term, term) || other.term == term)&&(identical(other.score, score) || other.score == score)&&(identical(other.count, count) || other.count == count)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,score,count,kind);

@override
String toString() {
  return 'WordTerm(term: $term, score: $score, count: $count, kind: $kind)';
}


}

/// @nodoc
abstract mixin class $WordTermCopyWith<$Res>  {
  factory $WordTermCopyWith(WordTerm value, $Res Function(WordTerm) _then) = _$WordTermCopyWithImpl;
@useResult
$Res call({
 String term, double score, int count, String kind
});




}
/// @nodoc
class _$WordTermCopyWithImpl<$Res>
    implements $WordTermCopyWith<$Res> {
  _$WordTermCopyWithImpl(this._self, this._then);

  final WordTerm _self;
  final $Res Function(WordTerm) _then;

/// Create a copy of WordTerm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? term = null,Object? score = null,Object? count = null,Object? kind = null,}) {
  return _then(_self.copyWith(
term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WordTerm].
extension WordTermPatterns on WordTerm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordTerm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordTerm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordTerm value)  $default,){
final _that = this;
switch (_that) {
case _WordTerm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordTerm value)?  $default,){
final _that = this;
switch (_that) {
case _WordTerm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String term,  double score,  int count,  String kind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordTerm() when $default != null:
return $default(_that.term,_that.score,_that.count,_that.kind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String term,  double score,  int count,  String kind)  $default,) {final _that = this;
switch (_that) {
case _WordTerm():
return $default(_that.term,_that.score,_that.count,_that.kind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String term,  double score,  int count,  String kind)?  $default,) {final _that = this;
switch (_that) {
case _WordTerm() when $default != null:
return $default(_that.term,_that.score,_that.count,_that.kind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordTerm implements WordTerm {
  const _WordTerm({required this.term, required this.score, required this.count, this.kind = 'word'});
  factory _WordTerm.fromJson(Map<String, dynamic> json) => _$WordTermFromJson(json);

@override final  String term;
@override final  double score;
@override final  int count;
@override@JsonKey() final  String kind;

/// Create a copy of WordTerm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordTermCopyWith<_WordTerm> get copyWith => __$WordTermCopyWithImpl<_WordTerm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordTermToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordTerm&&(identical(other.term, term) || other.term == term)&&(identical(other.score, score) || other.score == score)&&(identical(other.count, count) || other.count == count)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,score,count,kind);

@override
String toString() {
  return 'WordTerm(term: $term, score: $score, count: $count, kind: $kind)';
}


}

/// @nodoc
abstract mixin class _$WordTermCopyWith<$Res> implements $WordTermCopyWith<$Res> {
  factory _$WordTermCopyWith(_WordTerm value, $Res Function(_WordTerm) _then) = __$WordTermCopyWithImpl;
@override @useResult
$Res call({
 String term, double score, int count, String kind
});




}
/// @nodoc
class __$WordTermCopyWithImpl<$Res>
    implements _$WordTermCopyWith<$Res> {
  __$WordTermCopyWithImpl(this._self, this._then);

  final _WordTerm _self;
  final $Res Function(_WordTerm) _then;

/// Create a copy of WordTerm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? term = null,Object? score = null,Object? count = null,Object? kind = null,}) {
  return _then(_WordTerm(
term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NodeWords {

 String get nodeId; List<WordTerm> get terms;
/// Create a copy of NodeWords
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeWordsCopyWith<NodeWords> get copyWith => _$NodeWordsCopyWithImpl<NodeWords>(this as NodeWords, _$identity);

  /// Serializes this NodeWords to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NodeWords&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&const DeepCollectionEquality().equals(other.terms, terms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nodeId,const DeepCollectionEquality().hash(terms));

@override
String toString() {
  return 'NodeWords(nodeId: $nodeId, terms: $terms)';
}


}

/// @nodoc
abstract mixin class $NodeWordsCopyWith<$Res>  {
  factory $NodeWordsCopyWith(NodeWords value, $Res Function(NodeWords) _then) = _$NodeWordsCopyWithImpl;
@useResult
$Res call({
 String nodeId, List<WordTerm> terms
});




}
/// @nodoc
class _$NodeWordsCopyWithImpl<$Res>
    implements $NodeWordsCopyWith<$Res> {
  _$NodeWordsCopyWithImpl(this._self, this._then);

  final NodeWords _self;
  final $Res Function(NodeWords) _then;

/// Create a copy of NodeWords
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nodeId = null,Object? terms = null,}) {
  return _then(_self.copyWith(
nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,terms: null == terms ? _self.terms : terms // ignore: cast_nullable_to_non_nullable
as List<WordTerm>,
  ));
}

}


/// Adds pattern-matching-related methods to [NodeWords].
extension NodeWordsPatterns on NodeWords {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NodeWords value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NodeWords() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NodeWords value)  $default,){
final _that = this;
switch (_that) {
case _NodeWords():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NodeWords value)?  $default,){
final _that = this;
switch (_that) {
case _NodeWords() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nodeId,  List<WordTerm> terms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NodeWords() when $default != null:
return $default(_that.nodeId,_that.terms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nodeId,  List<WordTerm> terms)  $default,) {final _that = this;
switch (_that) {
case _NodeWords():
return $default(_that.nodeId,_that.terms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nodeId,  List<WordTerm> terms)?  $default,) {final _that = this;
switch (_that) {
case _NodeWords() when $default != null:
return $default(_that.nodeId,_that.terms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NodeWords implements NodeWords {
  const _NodeWords({required this.nodeId, required final  List<WordTerm> terms}): _terms = terms;
  factory _NodeWords.fromJson(Map<String, dynamic> json) => _$NodeWordsFromJson(json);

@override final  String nodeId;
 final  List<WordTerm> _terms;
@override List<WordTerm> get terms {
  if (_terms is EqualUnmodifiableListView) return _terms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_terms);
}


/// Create a copy of NodeWords
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodeWordsCopyWith<_NodeWords> get copyWith => __$NodeWordsCopyWithImpl<_NodeWords>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodeWordsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NodeWords&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&const DeepCollectionEquality().equals(other._terms, _terms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nodeId,const DeepCollectionEquality().hash(_terms));

@override
String toString() {
  return 'NodeWords(nodeId: $nodeId, terms: $terms)';
}


}

/// @nodoc
abstract mixin class _$NodeWordsCopyWith<$Res> implements $NodeWordsCopyWith<$Res> {
  factory _$NodeWordsCopyWith(_NodeWords value, $Res Function(_NodeWords) _then) = __$NodeWordsCopyWithImpl;
@override @useResult
$Res call({
 String nodeId, List<WordTerm> terms
});




}
/// @nodoc
class __$NodeWordsCopyWithImpl<$Res>
    implements _$NodeWordsCopyWith<$Res> {
  __$NodeWordsCopyWithImpl(this._self, this._then);

  final _NodeWords _self;
  final $Res Function(_NodeWords) _then;

/// Create a copy of NodeWords
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nodeId = null,Object? terms = null,}) {
  return _then(_NodeWords(
nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,terms: null == terms ? _self._terms : terms // ignore: cast_nullable_to_non_nullable
as List<WordTerm>,
  ));
}


}

/// @nodoc
mixin _$WordsBundle {

 Map<String, NodeWords> get nodes;
/// Create a copy of WordsBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordsBundleCopyWith<WordsBundle> get copyWith => _$WordsBundleCopyWithImpl<WordsBundle>(this as WordsBundle, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordsBundle&&const DeepCollectionEquality().equals(other.nodes, nodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nodes));

@override
String toString() {
  return 'WordsBundle(nodes: $nodes)';
}


}

/// @nodoc
abstract mixin class $WordsBundleCopyWith<$Res>  {
  factory $WordsBundleCopyWith(WordsBundle value, $Res Function(WordsBundle) _then) = _$WordsBundleCopyWithImpl;
@useResult
$Res call({
 Map<String, NodeWords> nodes
});




}
/// @nodoc
class _$WordsBundleCopyWithImpl<$Res>
    implements $WordsBundleCopyWith<$Res> {
  _$WordsBundleCopyWithImpl(this._self, this._then);

  final WordsBundle _self;
  final $Res Function(WordsBundle) _then;

/// Create a copy of WordsBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nodes = null,}) {
  return _then(_self.copyWith(
nodes: null == nodes ? _self.nodes : nodes // ignore: cast_nullable_to_non_nullable
as Map<String, NodeWords>,
  ));
}

}


/// Adds pattern-matching-related methods to [WordsBundle].
extension WordsBundlePatterns on WordsBundle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordsBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordsBundle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordsBundle value)  $default,){
final _that = this;
switch (_that) {
case _WordsBundle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordsBundle value)?  $default,){
final _that = this;
switch (_that) {
case _WordsBundle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, NodeWords> nodes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordsBundle() when $default != null:
return $default(_that.nodes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, NodeWords> nodes)  $default,) {final _that = this;
switch (_that) {
case _WordsBundle():
return $default(_that.nodes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, NodeWords> nodes)?  $default,) {final _that = this;
switch (_that) {
case _WordsBundle() when $default != null:
return $default(_that.nodes);case _:
  return null;

}
}

}

/// @nodoc


class _WordsBundle implements WordsBundle {
  const _WordsBundle({required final  Map<String, NodeWords> nodes}): _nodes = nodes;
  

 final  Map<String, NodeWords> _nodes;
@override Map<String, NodeWords> get nodes {
  if (_nodes is EqualUnmodifiableMapView) return _nodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nodes);
}


/// Create a copy of WordsBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordsBundleCopyWith<_WordsBundle> get copyWith => __$WordsBundleCopyWithImpl<_WordsBundle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordsBundle&&const DeepCollectionEquality().equals(other._nodes, _nodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nodes));

@override
String toString() {
  return 'WordsBundle(nodes: $nodes)';
}


}

/// @nodoc
abstract mixin class _$WordsBundleCopyWith<$Res> implements $WordsBundleCopyWith<$Res> {
  factory _$WordsBundleCopyWith(_WordsBundle value, $Res Function(_WordsBundle) _then) = __$WordsBundleCopyWithImpl;
@override @useResult
$Res call({
 Map<String, NodeWords> nodes
});




}
/// @nodoc
class __$WordsBundleCopyWithImpl<$Res>
    implements _$WordsBundleCopyWith<$Res> {
  __$WordsBundleCopyWithImpl(this._self, this._then);

  final _WordsBundle _self;
  final $Res Function(_WordsBundle) _then;

/// Create a copy of WordsBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nodes = null,}) {
  return _then(_WordsBundle(
nodes: null == nodes ? _self._nodes : nodes // ignore: cast_nullable_to_non_nullable
as Map<String, NodeWords>,
  ));
}


}

// dart format on
