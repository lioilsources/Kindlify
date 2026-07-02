// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReaderState {

 String get bookSlug;// Ordered list of node IDs from root to current: [root, chapter, section]
 List<String> get currentPath;// Active word/phrase filters
 List<String> get selectedWords;// Pinned words stay visible in cloud even after re-navigation
 List<String> get pinnedWords;// Pre-computed or RAG-generated summary text
 String? get displaySummary;// Incremented each time summary changes — used as AnimatedSwitcher key.
 int get summaryVersion; bool get isRagLoading; bool get isRagActive; bool get isOffline;
/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderStateCopyWith<ReaderState> get copyWith => _$ReaderStateCopyWithImpl<ReaderState>(this as ReaderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderState&&(identical(other.bookSlug, bookSlug) || other.bookSlug == bookSlug)&&const DeepCollectionEquality().equals(other.currentPath, currentPath)&&const DeepCollectionEquality().equals(other.selectedWords, selectedWords)&&const DeepCollectionEquality().equals(other.pinnedWords, pinnedWords)&&(identical(other.displaySummary, displaySummary) || other.displaySummary == displaySummary)&&(identical(other.summaryVersion, summaryVersion) || other.summaryVersion == summaryVersion)&&(identical(other.isRagLoading, isRagLoading) || other.isRagLoading == isRagLoading)&&(identical(other.isRagActive, isRagActive) || other.isRagActive == isRagActive)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline));
}


@override
int get hashCode => Object.hash(runtimeType,bookSlug,const DeepCollectionEquality().hash(currentPath),const DeepCollectionEquality().hash(selectedWords),const DeepCollectionEquality().hash(pinnedWords),displaySummary,summaryVersion,isRagLoading,isRagActive,isOffline);

@override
String toString() {
  return 'ReaderState(bookSlug: $bookSlug, currentPath: $currentPath, selectedWords: $selectedWords, pinnedWords: $pinnedWords, displaySummary: $displaySummary, summaryVersion: $summaryVersion, isRagLoading: $isRagLoading, isRagActive: $isRagActive, isOffline: $isOffline)';
}


}

/// @nodoc
abstract mixin class $ReaderStateCopyWith<$Res>  {
  factory $ReaderStateCopyWith(ReaderState value, $Res Function(ReaderState) _then) = _$ReaderStateCopyWithImpl;
@useResult
$Res call({
 String bookSlug, List<String> currentPath, List<String> selectedWords, List<String> pinnedWords, String? displaySummary, int summaryVersion, bool isRagLoading, bool isRagActive, bool isOffline
});




}
/// @nodoc
class _$ReaderStateCopyWithImpl<$Res>
    implements $ReaderStateCopyWith<$Res> {
  _$ReaderStateCopyWithImpl(this._self, this._then);

  final ReaderState _self;
  final $Res Function(ReaderState) _then;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookSlug = null,Object? currentPath = null,Object? selectedWords = null,Object? pinnedWords = null,Object? displaySummary = freezed,Object? summaryVersion = null,Object? isRagLoading = null,Object? isRagActive = null,Object? isOffline = null,}) {
  return _then(_self.copyWith(
bookSlug: null == bookSlug ? _self.bookSlug : bookSlug // ignore: cast_nullable_to_non_nullable
as String,currentPath: null == currentPath ? _self.currentPath : currentPath // ignore: cast_nullable_to_non_nullable
as List<String>,selectedWords: null == selectedWords ? _self.selectedWords : selectedWords // ignore: cast_nullable_to_non_nullable
as List<String>,pinnedWords: null == pinnedWords ? _self.pinnedWords : pinnedWords // ignore: cast_nullable_to_non_nullable
as List<String>,displaySummary: freezed == displaySummary ? _self.displaySummary : displaySummary // ignore: cast_nullable_to_non_nullable
as String?,summaryVersion: null == summaryVersion ? _self.summaryVersion : summaryVersion // ignore: cast_nullable_to_non_nullable
as int,isRagLoading: null == isRagLoading ? _self.isRagLoading : isRagLoading // ignore: cast_nullable_to_non_nullable
as bool,isRagActive: null == isRagActive ? _self.isRagActive : isRagActive // ignore: cast_nullable_to_non_nullable
as bool,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReaderState].
extension ReaderStatePatterns on ReaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderState value)  $default,){
final _that = this;
switch (_that) {
case _ReaderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderState value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bookSlug,  List<String> currentPath,  List<String> selectedWords,  List<String> pinnedWords,  String? displaySummary,  int summaryVersion,  bool isRagLoading,  bool isRagActive,  bool isOffline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderState() when $default != null:
return $default(_that.bookSlug,_that.currentPath,_that.selectedWords,_that.pinnedWords,_that.displaySummary,_that.summaryVersion,_that.isRagLoading,_that.isRagActive,_that.isOffline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bookSlug,  List<String> currentPath,  List<String> selectedWords,  List<String> pinnedWords,  String? displaySummary,  int summaryVersion,  bool isRagLoading,  bool isRagActive,  bool isOffline)  $default,) {final _that = this;
switch (_that) {
case _ReaderState():
return $default(_that.bookSlug,_that.currentPath,_that.selectedWords,_that.pinnedWords,_that.displaySummary,_that.summaryVersion,_that.isRagLoading,_that.isRagActive,_that.isOffline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bookSlug,  List<String> currentPath,  List<String> selectedWords,  List<String> pinnedWords,  String? displaySummary,  int summaryVersion,  bool isRagLoading,  bool isRagActive,  bool isOffline)?  $default,) {final _that = this;
switch (_that) {
case _ReaderState() when $default != null:
return $default(_that.bookSlug,_that.currentPath,_that.selectedWords,_that.pinnedWords,_that.displaySummary,_that.summaryVersion,_that.isRagLoading,_that.isRagActive,_that.isOffline);case _:
  return null;

}
}

}

/// @nodoc


class _ReaderState extends ReaderState {
  const _ReaderState({required this.bookSlug, required final  List<String> currentPath, required final  List<String> selectedWords, required final  List<String> pinnedWords, this.displaySummary = null, this.summaryVersion = 0, this.isRagLoading = false, this.isRagActive = false, this.isOffline = false}): _currentPath = currentPath,_selectedWords = selectedWords,_pinnedWords = pinnedWords,super._();
  

@override final  String bookSlug;
// Ordered list of node IDs from root to current: [root, chapter, section]
 final  List<String> _currentPath;
// Ordered list of node IDs from root to current: [root, chapter, section]
@override List<String> get currentPath {
  if (_currentPath is EqualUnmodifiableListView) return _currentPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentPath);
}

// Active word/phrase filters
 final  List<String> _selectedWords;
// Active word/phrase filters
@override List<String> get selectedWords {
  if (_selectedWords is EqualUnmodifiableListView) return _selectedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedWords);
}

// Pinned words stay visible in cloud even after re-navigation
 final  List<String> _pinnedWords;
// Pinned words stay visible in cloud even after re-navigation
@override List<String> get pinnedWords {
  if (_pinnedWords is EqualUnmodifiableListView) return _pinnedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pinnedWords);
}

// Pre-computed or RAG-generated summary text
@override@JsonKey() final  String? displaySummary;
// Incremented each time summary changes — used as AnimatedSwitcher key.
@override@JsonKey() final  int summaryVersion;
@override@JsonKey() final  bool isRagLoading;
@override@JsonKey() final  bool isRagActive;
@override@JsonKey() final  bool isOffline;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderStateCopyWith<_ReaderState> get copyWith => __$ReaderStateCopyWithImpl<_ReaderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderState&&(identical(other.bookSlug, bookSlug) || other.bookSlug == bookSlug)&&const DeepCollectionEquality().equals(other._currentPath, _currentPath)&&const DeepCollectionEquality().equals(other._selectedWords, _selectedWords)&&const DeepCollectionEquality().equals(other._pinnedWords, _pinnedWords)&&(identical(other.displaySummary, displaySummary) || other.displaySummary == displaySummary)&&(identical(other.summaryVersion, summaryVersion) || other.summaryVersion == summaryVersion)&&(identical(other.isRagLoading, isRagLoading) || other.isRagLoading == isRagLoading)&&(identical(other.isRagActive, isRagActive) || other.isRagActive == isRagActive)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline));
}


@override
int get hashCode => Object.hash(runtimeType,bookSlug,const DeepCollectionEquality().hash(_currentPath),const DeepCollectionEquality().hash(_selectedWords),const DeepCollectionEquality().hash(_pinnedWords),displaySummary,summaryVersion,isRagLoading,isRagActive,isOffline);

@override
String toString() {
  return 'ReaderState(bookSlug: $bookSlug, currentPath: $currentPath, selectedWords: $selectedWords, pinnedWords: $pinnedWords, displaySummary: $displaySummary, summaryVersion: $summaryVersion, isRagLoading: $isRagLoading, isRagActive: $isRagActive, isOffline: $isOffline)';
}


}

/// @nodoc
abstract mixin class _$ReaderStateCopyWith<$Res> implements $ReaderStateCopyWith<$Res> {
  factory _$ReaderStateCopyWith(_ReaderState value, $Res Function(_ReaderState) _then) = __$ReaderStateCopyWithImpl;
@override @useResult
$Res call({
 String bookSlug, List<String> currentPath, List<String> selectedWords, List<String> pinnedWords, String? displaySummary, int summaryVersion, bool isRagLoading, bool isRagActive, bool isOffline
});




}
/// @nodoc
class __$ReaderStateCopyWithImpl<$Res>
    implements _$ReaderStateCopyWith<$Res> {
  __$ReaderStateCopyWithImpl(this._self, this._then);

  final _ReaderState _self;
  final $Res Function(_ReaderState) _then;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookSlug = null,Object? currentPath = null,Object? selectedWords = null,Object? pinnedWords = null,Object? displaySummary = freezed,Object? summaryVersion = null,Object? isRagLoading = null,Object? isRagActive = null,Object? isOffline = null,}) {
  return _then(_ReaderState(
bookSlug: null == bookSlug ? _self.bookSlug : bookSlug // ignore: cast_nullable_to_non_nullable
as String,currentPath: null == currentPath ? _self._currentPath : currentPath // ignore: cast_nullable_to_non_nullable
as List<String>,selectedWords: null == selectedWords ? _self._selectedWords : selectedWords // ignore: cast_nullable_to_non_nullable
as List<String>,pinnedWords: null == pinnedWords ? _self._pinnedWords : pinnedWords // ignore: cast_nullable_to_non_nullable
as List<String>,displaySummary: freezed == displaySummary ? _self.displaySummary : displaySummary // ignore: cast_nullable_to_non_nullable
as String?,summaryVersion: null == summaryVersion ? _self.summaryVersion : summaryVersion // ignore: cast_nullable_to_non_nullable
as int,isRagLoading: null == isRagLoading ? _self.isRagLoading : isRagLoading // ignore: cast_nullable_to_non_nullable
as bool,isRagActive: null == isRagActive ? _self.isRagActive : isRagActive // ignore: cast_nullable_to_non_nullable
as bool,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
