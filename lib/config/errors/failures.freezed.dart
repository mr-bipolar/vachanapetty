// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failures {
  String? get errorMessage;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailuresCopyWith<Failures> get copyWith =>
      _$FailuresCopyWithImpl<Failures>(this as Failures, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failures &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'Failures(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) _then) =
      _$FailuresCopyWithImpl;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res> implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._self, this._then);

  final Failures _self;
  final $Res Function(Failures) _then;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Failures].
extension FailuresPatterns on Failures {
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
    TResult Function(_ClientFailure value)? clientfailure,
    TResult Function(_ServerFailure value)? serverfailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure() when clientfailure != null:
        return clientfailure(_that);
      case _ServerFailure() when serverfailure != null:
        return serverfailure(_that);
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
    required TResult Function(_ClientFailure value) clientfailure,
    required TResult Function(_ServerFailure value) serverfailure,
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure():
        return clientfailure(_that);
      case _ServerFailure():
        return serverfailure(_that);
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
    TResult? Function(_ClientFailure value)? clientfailure,
    TResult? Function(_ServerFailure value)? serverfailure,
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure() when clientfailure != null:
        return clientfailure(_that);
      case _ServerFailure() when serverfailure != null:
        return serverfailure(_that);
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
    TResult Function(String? errorMessage)? clientfailure,
    TResult Function(String? errorMessage)? serverfailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure() when clientfailure != null:
        return clientfailure(_that.errorMessage);
      case _ServerFailure() when serverfailure != null:
        return serverfailure(_that.errorMessage);
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
    required TResult Function(String? errorMessage) clientfailure,
    required TResult Function(String? errorMessage) serverfailure,
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure():
        return clientfailure(_that.errorMessage);
      case _ServerFailure():
        return serverfailure(_that.errorMessage);
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
    TResult? Function(String? errorMessage)? clientfailure,
    TResult? Function(String? errorMessage)? serverfailure,
  }) {
    final _that = this;
    switch (_that) {
      case _ClientFailure() when clientfailure != null:
        return clientfailure(_that.errorMessage);
      case _ServerFailure() when serverfailure != null:
        return serverfailure(_that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ClientFailure implements Failures {
  const _ClientFailure({this.errorMessage});

  @override
  final String? errorMessage;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientFailureCopyWith<_ClientFailure> get copyWith =>
      __$ClientFailureCopyWithImpl<_ClientFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'Failures.clientfailure(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ClientFailureCopyWith<$Res>
    implements $FailuresCopyWith<$Res> {
  factory _$ClientFailureCopyWith(
          _ClientFailure value, $Res Function(_ClientFailure) _then) =
      __$ClientFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$ClientFailureCopyWithImpl<$Res>
    implements _$ClientFailureCopyWith<$Res> {
  __$ClientFailureCopyWithImpl(this._self, this._then);

  final _ClientFailure _self;
  final $Res Function(_ClientFailure) _then;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_ClientFailure(
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ServerFailure implements Failures {
  const _ServerFailure({this.errorMessage});

  @override
  final String? errorMessage;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'Failures.serverfailure(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res>
    implements $FailuresCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) _then) =
      __$ServerFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

  /// Create a copy of Failures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_ServerFailure(
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
