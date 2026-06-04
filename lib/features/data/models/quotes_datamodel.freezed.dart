// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_datamodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuotesDataModel {
// from verses table
  int get id;
  int get bookId;
  String get verseNumber;
  String get quoteMl; // from books table
  String get nameEn;
  String get nameMl;

  /// Create a copy of QuotesDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuotesDataModelCopyWith<QuotesDataModel> get copyWith =>
      _$QuotesDataModelCopyWithImpl<QuotesDataModel>(
          this as QuotesDataModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuotesDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.verseNumber, verseNumber) ||
                other.verseNumber == verseNumber) &&
            (identical(other.quoteMl, quoteMl) || other.quoteMl == quoteMl) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameMl, nameMl) || other.nameMl == nameMl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookId, verseNumber, quoteMl, nameEn, nameMl);

  @override
  String toString() {
    return 'QuotesDataModel(id: $id, bookId: $bookId, verseNumber: $verseNumber, quoteMl: $quoteMl, nameEn: $nameEn, nameMl: $nameMl)';
  }
}

/// @nodoc
abstract mixin class $QuotesDataModelCopyWith<$Res> {
  factory $QuotesDataModelCopyWith(
          QuotesDataModel value, $Res Function(QuotesDataModel) _then) =
      _$QuotesDataModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int bookId,
      String verseNumber,
      String quoteMl,
      String nameEn,
      String nameMl});
}

/// @nodoc
class _$QuotesDataModelCopyWithImpl<$Res>
    implements $QuotesDataModelCopyWith<$Res> {
  _$QuotesDataModelCopyWithImpl(this._self, this._then);

  final QuotesDataModel _self;
  final $Res Function(QuotesDataModel) _then;

  /// Create a copy of QuotesDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? verseNumber = null,
    Object? quoteMl = null,
    Object? nameEn = null,
    Object? nameMl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _self.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quoteMl: null == quoteMl
          ? _self.quoteMl
          : quoteMl // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _self.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameMl: null == nameMl
          ? _self.nameMl
          : nameMl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [QuotesDataModel].
extension QuotesDataModelPatterns on QuotesDataModel {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuotesDataModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_QuotesDataModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuotesDataModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, int bookId, String verseNumber, String quoteMl,
            String nameEn, String nameMl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel() when $default != null:
        return $default(_that.id, _that.bookId, _that.verseNumber,
            _that.quoteMl, _that.nameEn, _that.nameMl);
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
  TResult when<TResult extends Object?>(
    TResult Function(int id, int bookId, String verseNumber, String quoteMl,
            String nameEn, String nameMl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel():
        return $default(_that.id, _that.bookId, _that.verseNumber,
            _that.quoteMl, _that.nameEn, _that.nameMl);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, int bookId, String verseNumber, String quoteMl,
            String nameEn, String nameMl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesDataModel() when $default != null:
        return $default(_that.id, _that.bookId, _that.verseNumber,
            _that.quoteMl, _that.nameEn, _that.nameMl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _QuotesDataModel implements QuotesDataModel {
  _QuotesDataModel(
      {required this.id,
      required this.bookId,
      required this.verseNumber,
      required this.quoteMl,
      required this.nameEn,
      required this.nameMl});

// from verses table
  @override
  final int id;
  @override
  final int bookId;
  @override
  final String verseNumber;
  @override
  final String quoteMl;
// from books table
  @override
  final String nameEn;
  @override
  final String nameMl;

  /// Create a copy of QuotesDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuotesDataModelCopyWith<_QuotesDataModel> get copyWith =>
      __$QuotesDataModelCopyWithImpl<_QuotesDataModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotesDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.verseNumber, verseNumber) ||
                other.verseNumber == verseNumber) &&
            (identical(other.quoteMl, quoteMl) || other.quoteMl == quoteMl) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameMl, nameMl) || other.nameMl == nameMl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookId, verseNumber, quoteMl, nameEn, nameMl);

  @override
  String toString() {
    return 'QuotesDataModel(id: $id, bookId: $bookId, verseNumber: $verseNumber, quoteMl: $quoteMl, nameEn: $nameEn, nameMl: $nameMl)';
  }
}

/// @nodoc
abstract mixin class _$QuotesDataModelCopyWith<$Res>
    implements $QuotesDataModelCopyWith<$Res> {
  factory _$QuotesDataModelCopyWith(
          _QuotesDataModel value, $Res Function(_QuotesDataModel) _then) =
      __$QuotesDataModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int bookId,
      String verseNumber,
      String quoteMl,
      String nameEn,
      String nameMl});
}

/// @nodoc
class __$QuotesDataModelCopyWithImpl<$Res>
    implements _$QuotesDataModelCopyWith<$Res> {
  __$QuotesDataModelCopyWithImpl(this._self, this._then);

  final _QuotesDataModel _self;
  final $Res Function(_QuotesDataModel) _then;

  /// Create a copy of QuotesDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? verseNumber = null,
    Object? quoteMl = null,
    Object? nameEn = null,
    Object? nameMl = null,
  }) {
    return _then(_QuotesDataModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _self.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quoteMl: null == quoteMl
          ? _self.quoteMl
          : quoteMl // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _self.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameMl: null == nameMl
          ? _self.nameMl
          : nameMl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
