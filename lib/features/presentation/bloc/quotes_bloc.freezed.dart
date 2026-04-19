// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuotesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuotesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesEvent()';
  }
}

/// @nodoc
class $QuotesEventCopyWith<$Res> {
  $QuotesEventCopyWith(QuotesEvent _, $Res Function(QuotesEvent) __);
}

/// Adds pattern-matching-related methods to [QuotesEvent].
extension QuotesEventPatterns on QuotesEvent {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRandom value)? fetchRandom,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom() when fetchRandom != null:
        return fetchRandom(_that);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRandom value) fetchRandom,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom():
        return fetchRandom(_that);
      case _FetchAll():
        return fetchAll(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRandom value)? fetchRandom,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom() when fetchRandom != null:
        return fetchRandom(_that);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRandom,
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom() when fetchRandom != null:
        return fetchRandom();
      case _FetchAll() when fetchAll != null:
        return fetchAll();
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRandom,
    required TResult Function() fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom():
        return fetchRandom();
      case _FetchAll():
        return fetchAll();
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRandom,
    TResult? Function()? fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchRandom() when fetchRandom != null:
        return fetchRandom();
      case _FetchAll() when fetchAll != null:
        return fetchAll();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FetchRandom implements QuotesEvent {
  const _FetchRandom();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchRandom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesEvent.fetchRandom()';
  }
}

/// @nodoc

class _FetchAll implements QuotesEvent {
  const _FetchAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesEvent.fetchAll()';
  }
}

/// @nodoc
mixin _$QuotesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuotesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesState()';
  }
}

/// @nodoc
class $QuotesStateCopyWith<$Res> {
  $QuotesStateCopyWith(QuotesState _, $Res Function(QuotesState) __);
}

/// Adds pattern-matching-related methods to [QuotesState].
extension QuotesStatePatterns on QuotesState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(JumpToIndex value)? jumpToIndex,
    TResult Function(AllQuotesData value)? fetch,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case JumpToIndex() when jumpToIndex != null:
        return jumpToIndex(_that);
      case AllQuotesData() when fetch != null:
        return fetch(_that);
      case Error() when error != null:
        return error(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(JumpToIndex value) jumpToIndex,
    required TResult Function(AllQuotesData value) fetch,
    required TResult Function(Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case JumpToIndex():
        return jumpToIndex(_that);
      case AllQuotesData():
        return fetch(_that);
      case Error():
        return error(_that);
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(JumpToIndex value)? jumpToIndex,
    TResult? Function(AllQuotesData value)? fetch,
    TResult? Function(Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case JumpToIndex() when jumpToIndex != null:
        return jumpToIndex(_that);
      case AllQuotesData() when fetch != null:
        return fetch(_that);
      case Error() when error != null:
        return error(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int? index)? jumpToIndex,
    TResult Function(List<QuotesDataEntity> quotesData, int? jumpToIndex)?
        fetch,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case JumpToIndex() when jumpToIndex != null:
        return jumpToIndex(_that.index);
      case AllQuotesData() when fetch != null:
        return fetch(_that.quotesData, _that.jumpToIndex);
      case Error() when error != null:
        return error(_that.message);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int? index) jumpToIndex,
    required TResult Function(
            List<QuotesDataEntity> quotesData, int? jumpToIndex)
        fetch,
    required TResult Function(String? message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _initial():
        return initial();
      case Loading():
        return loading();
      case JumpToIndex():
        return jumpToIndex(_that.index);
      case AllQuotesData():
        return fetch(_that.quotesData, _that.jumpToIndex);
      case Error():
        return error(_that.message);
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int? index)? jumpToIndex,
    TResult? Function(List<QuotesDataEntity> quotesData, int? jumpToIndex)?
        fetch,
    TResult? Function(String? message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case JumpToIndex() when jumpToIndex != null:
        return jumpToIndex(_that.index);
      case AllQuotesData() when fetch != null:
        return fetch(_that.quotesData, _that.jumpToIndex);
      case Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _initial implements QuotesState {
  const _initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesState.initial()';
  }
}

/// @nodoc

class Loading implements QuotesState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QuotesState.loading()';
  }
}

/// @nodoc

class JumpToIndex implements QuotesState {
  const JumpToIndex({this.index});

  final int? index;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JumpToIndexCopyWith<JumpToIndex> get copyWith =>
      _$JumpToIndexCopyWithImpl<JumpToIndex>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JumpToIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'QuotesState.jumpToIndex(index: $index)';
  }
}

/// @nodoc
abstract mixin class $JumpToIndexCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory $JumpToIndexCopyWith(
          JumpToIndex value, $Res Function(JumpToIndex) _then) =
      _$JumpToIndexCopyWithImpl;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class _$JumpToIndexCopyWithImpl<$Res> implements $JumpToIndexCopyWith<$Res> {
  _$JumpToIndexCopyWithImpl(this._self, this._then);

  final JumpToIndex _self;
  final $Res Function(JumpToIndex) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = freezed,
  }) {
    return _then(JumpToIndex(
      index: freezed == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class AllQuotesData implements QuotesState {
  const AllQuotesData(
      {required final List<QuotesDataEntity> quotesData, this.jumpToIndex})
      : _quotesData = quotesData;

  final List<QuotesDataEntity> _quotesData;
  List<QuotesDataEntity> get quotesData {
    if (_quotesData is EqualUnmodifiableListView) return _quotesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotesData);
  }

  final int? jumpToIndex;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllQuotesDataCopyWith<AllQuotesData> get copyWith =>
      _$AllQuotesDataCopyWithImpl<AllQuotesData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllQuotesData &&
            const DeepCollectionEquality()
                .equals(other._quotesData, _quotesData) &&
            (identical(other.jumpToIndex, jumpToIndex) ||
                other.jumpToIndex == jumpToIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_quotesData), jumpToIndex);

  @override
  String toString() {
    return 'QuotesState.fetch(quotesData: $quotesData, jumpToIndex: $jumpToIndex)';
  }
}

/// @nodoc
abstract mixin class $AllQuotesDataCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory $AllQuotesDataCopyWith(
          AllQuotesData value, $Res Function(AllQuotesData) _then) =
      _$AllQuotesDataCopyWithImpl;
  @useResult
  $Res call({List<QuotesDataEntity> quotesData, int? jumpToIndex});
}

/// @nodoc
class _$AllQuotesDataCopyWithImpl<$Res>
    implements $AllQuotesDataCopyWith<$Res> {
  _$AllQuotesDataCopyWithImpl(this._self, this._then);

  final AllQuotesData _self;
  final $Res Function(AllQuotesData) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quotesData = null,
    Object? jumpToIndex = freezed,
  }) {
    return _then(AllQuotesData(
      quotesData: null == quotesData
          ? _self._quotesData
          : quotesData // ignore: cast_nullable_to_non_nullable
              as List<QuotesDataEntity>,
      jumpToIndex: freezed == jumpToIndex
          ? _self.jumpToIndex
          : jumpToIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class Error implements QuotesState {
  const Error({this.message});

  final String? message;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'QuotesState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
