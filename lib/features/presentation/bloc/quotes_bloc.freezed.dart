// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
mixin _$QuotesState {
  QuotesData? get quotedata;
  bool get isLoading;
  Option<Either<Failures, QuotesData>> get failorpass;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuotesStateCopyWith<QuotesState> get copyWith =>
      _$QuotesStateCopyWithImpl<QuotesState>(this as QuotesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuotesState &&
            (identical(other.quotedata, quotedata) ||
                other.quotedata == quotedata) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failorpass, failorpass) ||
                other.failorpass == failorpass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, quotedata, isLoading, failorpass);

  @override
  String toString() {
    return 'QuotesState(quotedata: $quotedata, isLoading: $isLoading, failorpass: $failorpass)';
  }
}

/// @nodoc
abstract mixin class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) _then) =
      _$QuotesStateCopyWithImpl;
  @useResult
  $Res call(
      {QuotesData? quotedata,
      bool isLoading,
      Option<Either<Failures, QuotesData>> failorpass});
}

/// @nodoc
class _$QuotesStateCopyWithImpl<$Res> implements $QuotesStateCopyWith<$Res> {
  _$QuotesStateCopyWithImpl(this._self, this._then);

  final QuotesState _self;
  final $Res Function(QuotesState) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotedata = freezed,
    Object? isLoading = null,
    Object? failorpass = null,
  }) {
    return _then(_self.copyWith(
      quotedata: freezed == quotedata
          ? _self.quotedata
          : quotedata // ignore: cast_nullable_to_non_nullable
              as QuotesData?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failorpass: null == failorpass
          ? _self.failorpass
          : failorpass // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failures, QuotesData>>,
    ));
  }
}

/// @nodoc

class _DataLoaded implements QuotesState {
  const _DataLoaded(
      {this.quotedata, required this.isLoading, required this.failorpass});

  @override
  final QuotesData? quotedata;
  @override
  final bool isLoading;
  @override
  final Option<Either<Failures, QuotesData>> failorpass;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataLoadedCopyWith<_DataLoaded> get copyWith =>
      __$DataLoadedCopyWithImpl<_DataLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataLoaded &&
            (identical(other.quotedata, quotedata) ||
                other.quotedata == quotedata) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failorpass, failorpass) ||
                other.failorpass == failorpass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, quotedata, isLoading, failorpass);

  @override
  String toString() {
    return 'QuotesState(quotedata: $quotedata, isLoading: $isLoading, failorpass: $failorpass)';
  }
}

/// @nodoc
abstract mixin class _$DataLoadedCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory _$DataLoadedCopyWith(
          _DataLoaded value, $Res Function(_DataLoaded) _then) =
      __$DataLoadedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {QuotesData? quotedata,
      bool isLoading,
      Option<Either<Failures, QuotesData>> failorpass});
}

/// @nodoc
class __$DataLoadedCopyWithImpl<$Res> implements _$DataLoadedCopyWith<$Res> {
  __$DataLoadedCopyWithImpl(this._self, this._then);

  final _DataLoaded _self;
  final $Res Function(_DataLoaded) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quotedata = freezed,
    Object? isLoading = null,
    Object? failorpass = null,
  }) {
    return _then(_DataLoaded(
      quotedata: freezed == quotedata
          ? _self.quotedata
          : quotedata // ignore: cast_nullable_to_non_nullable
              as QuotesData?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failorpass: null == failorpass
          ? _self.failorpass
          : failorpass // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failures, QuotesData>>,
    ));
  }
}

// dart format on
