// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reader_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentTermsHash() => r'35822f1932fad4275b294b0173802042582dbfe1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [currentTerms].
@ProviderFor(currentTerms)
const currentTermsProvider = CurrentTermsFamily();

/// See also [currentTerms].
class CurrentTermsFamily extends Family<AsyncValue<List<dynamic>>> {
  /// See also [currentTerms].
  const CurrentTermsFamily();

  /// See also [currentTerms].
  CurrentTermsProvider call(String bookSlug) {
    return CurrentTermsProvider(bookSlug);
  }

  @override
  CurrentTermsProvider getProviderOverride(
    covariant CurrentTermsProvider provider,
  ) {
    return call(provider.bookSlug);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentTermsProvider';
}

/// See also [currentTerms].
class CurrentTermsProvider extends AutoDisposeFutureProvider<List<dynamic>> {
  /// See also [currentTerms].
  CurrentTermsProvider(String bookSlug)
    : this._internal(
        (ref) => currentTerms(ref as CurrentTermsRef, bookSlug),
        from: currentTermsProvider,
        name: r'currentTermsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$currentTermsHash,
        dependencies: CurrentTermsFamily._dependencies,
        allTransitiveDependencies:
            CurrentTermsFamily._allTransitiveDependencies,
        bookSlug: bookSlug,
      );

  CurrentTermsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookSlug,
  }) : super.internal();

  final String bookSlug;

  @override
  Override overrideWith(
    FutureOr<List<dynamic>> Function(CurrentTermsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentTermsProvider._internal(
        (ref) => create(ref as CurrentTermsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookSlug: bookSlug,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<dynamic>> createElement() {
    return _CurrentTermsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentTermsProvider && other.bookSlug == bookSlug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookSlug.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CurrentTermsRef on AutoDisposeFutureProviderRef<List<dynamic>> {
  /// The parameter `bookSlug` of this provider.
  String get bookSlug;
}

class _CurrentTermsProviderElement
    extends AutoDisposeFutureProviderElement<List<dynamic>>
    with CurrentTermsRef {
  _CurrentTermsProviderElement(super.provider);

  @override
  String get bookSlug => (origin as CurrentTermsProvider).bookSlug;
}

String _$filteredSiblingsHash() => r'544b93d964931583953ca4c733f4855532985888';

/// Returns children of the current node — what the user can navigate into.
/// When word filters are active, marks which children contain all selected words.
///
/// Copied from [filteredSiblings].
@ProviderFor(filteredSiblings)
const filteredSiblingsProvider = FilteredSiblingsFamily();

/// Returns children of the current node — what the user can navigate into.
/// When word filters are active, marks which children contain all selected words.
///
/// Copied from [filteredSiblings].
class FilteredSiblingsFamily extends Family<AsyncValue<List<dynamic>>> {
  /// Returns children of the current node — what the user can navigate into.
  /// When word filters are active, marks which children contain all selected words.
  ///
  /// Copied from [filteredSiblings].
  const FilteredSiblingsFamily();

  /// Returns children of the current node — what the user can navigate into.
  /// When word filters are active, marks which children contain all selected words.
  ///
  /// Copied from [filteredSiblings].
  FilteredSiblingsProvider call(String bookSlug) {
    return FilteredSiblingsProvider(bookSlug);
  }

  @override
  FilteredSiblingsProvider getProviderOverride(
    covariant FilteredSiblingsProvider provider,
  ) {
    return call(provider.bookSlug);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredSiblingsProvider';
}

/// Returns children of the current node — what the user can navigate into.
/// When word filters are active, marks which children contain all selected words.
///
/// Copied from [filteredSiblings].
class FilteredSiblingsProvider
    extends AutoDisposeFutureProvider<List<dynamic>> {
  /// Returns children of the current node — what the user can navigate into.
  /// When word filters are active, marks which children contain all selected words.
  ///
  /// Copied from [filteredSiblings].
  FilteredSiblingsProvider(String bookSlug)
    : this._internal(
        (ref) => filteredSiblings(ref as FilteredSiblingsRef, bookSlug),
        from: filteredSiblingsProvider,
        name: r'filteredSiblingsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$filteredSiblingsHash,
        dependencies: FilteredSiblingsFamily._dependencies,
        allTransitiveDependencies:
            FilteredSiblingsFamily._allTransitiveDependencies,
        bookSlug: bookSlug,
      );

  FilteredSiblingsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookSlug,
  }) : super.internal();

  final String bookSlug;

  @override
  Override overrideWith(
    FutureOr<List<dynamic>> Function(FilteredSiblingsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredSiblingsProvider._internal(
        (ref) => create(ref as FilteredSiblingsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookSlug: bookSlug,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<dynamic>> createElement() {
    return _FilteredSiblingsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredSiblingsProvider && other.bookSlug == bookSlug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookSlug.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredSiblingsRef on AutoDisposeFutureProviderRef<List<dynamic>> {
  /// The parameter `bookSlug` of this provider.
  String get bookSlug;
}

class _FilteredSiblingsProviderElement
    extends AutoDisposeFutureProviderElement<List<dynamic>>
    with FilteredSiblingsRef {
  _FilteredSiblingsProviderElement(super.provider);

  @override
  String get bookSlug => (origin as FilteredSiblingsProvider).bookSlug;
}

String _$readerNotifierHash() => r'998915ae90b94ace391f9667b6e27f6248d8674c';

abstract class _$ReaderNotifier
    extends BuildlessAutoDisposeNotifier<ReaderState> {
  late final String bookSlug;

  ReaderState build(String bookSlug);
}

/// See also [ReaderNotifier].
@ProviderFor(ReaderNotifier)
const readerNotifierProvider = ReaderNotifierFamily();

/// See also [ReaderNotifier].
class ReaderNotifierFamily extends Family<ReaderState> {
  /// See also [ReaderNotifier].
  const ReaderNotifierFamily();

  /// See also [ReaderNotifier].
  ReaderNotifierProvider call(String bookSlug) {
    return ReaderNotifierProvider(bookSlug);
  }

  @override
  ReaderNotifierProvider getProviderOverride(
    covariant ReaderNotifierProvider provider,
  ) {
    return call(provider.bookSlug);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'readerNotifierProvider';
}

/// See also [ReaderNotifier].
class ReaderNotifierProvider
    extends AutoDisposeNotifierProviderImpl<ReaderNotifier, ReaderState> {
  /// See also [ReaderNotifier].
  ReaderNotifierProvider(String bookSlug)
    : this._internal(
        () => ReaderNotifier()..bookSlug = bookSlug,
        from: readerNotifierProvider,
        name: r'readerNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$readerNotifierHash,
        dependencies: ReaderNotifierFamily._dependencies,
        allTransitiveDependencies:
            ReaderNotifierFamily._allTransitiveDependencies,
        bookSlug: bookSlug,
      );

  ReaderNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookSlug,
  }) : super.internal();

  final String bookSlug;

  @override
  ReaderState runNotifierBuild(covariant ReaderNotifier notifier) {
    return notifier.build(bookSlug);
  }

  @override
  Override overrideWith(ReaderNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReaderNotifierProvider._internal(
        () => create()..bookSlug = bookSlug,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookSlug: bookSlug,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ReaderNotifier, ReaderState>
  createElement() {
    return _ReaderNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReaderNotifierProvider && other.bookSlug == bookSlug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookSlug.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReaderNotifierRef on AutoDisposeNotifierProviderRef<ReaderState> {
  /// The parameter `bookSlug` of this provider.
  String get bookSlug;
}

class _ReaderNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ReaderNotifier, ReaderState>
    with ReaderNotifierRef {
  _ReaderNotifierProviderElement(super.provider);

  @override
  String get bookSlug => (origin as ReaderNotifierProvider).bookSlug;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
