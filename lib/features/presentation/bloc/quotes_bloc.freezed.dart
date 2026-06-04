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
  int? get bookId;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuotesEventCopyWith<QuotesEvent> get copyWith =>
      _$QuotesEventCopyWithImpl<QuotesEvent>(this as QuotesEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuotesEvent &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @override
  String toString() {
    return 'QuotesEvent(bookId: $bookId)';
  }
}

/// @nodoc
abstract mixin class $QuotesEventCopyWith<$Res> {
  factory $QuotesEventCopyWith(
          QuotesEvent value, $Res Function(QuotesEvent) _then) =
      _$QuotesEventCopyWithImpl;
  @useResult
  $Res call({int? bookId});
}

/// @nodoc
class _$QuotesEventCopyWithImpl<$Res> implements $QuotesEventCopyWith<$Res> {
  _$QuotesEventCopyWithImpl(this._self, this._then);

  final QuotesEvent _self;
  final $Res Function(QuotesEvent) _then;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = freezed,
  }) {
    return _then(_self.copyWith(
      bookId: freezed == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
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
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_ChooseBook value)? chooseBook,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _ChooseBook() when chooseBook != null:
        return chooseBook(_that);
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
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_ChooseBook value) chooseBook,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll():
        return fetchAll(_that);
      case _ChooseBook():
        return chooseBook(_that);
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
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_ChooseBook value)? chooseBook,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _ChooseBook() when chooseBook != null:
        return chooseBook(_that);
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
    TResult Function(int? bookId)? fetchAll,
    TResult Function(int? bookId)? chooseBook,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.bookId);
      case _ChooseBook() when chooseBook != null:
        return chooseBook(_that.bookId);
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
    required TResult Function(int? bookId) fetchAll,
    required TResult Function(int? bookId) chooseBook,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll():
        return fetchAll(_that.bookId);
      case _ChooseBook():
        return chooseBook(_that.bookId);
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
    TResult? Function(int? bookId)? fetchAll,
    TResult? Function(int? bookId)? chooseBook,
  }) {
    final _that = this;
    switch (_that) {
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.bookId);
      case _ChooseBook() when chooseBook != null:
        return chooseBook(_that.bookId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FetchAll implements QuotesEvent {
  const _FetchAll({this.bookId});

  @override
  final int? bookId;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchAllCopyWith<_FetchAll> get copyWith =>
      __$FetchAllCopyWithImpl<_FetchAll>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchAll &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @override
  String toString() {
    return 'QuotesEvent.fetchAll(bookId: $bookId)';
  }
}

/// @nodoc
abstract mixin class _$FetchAllCopyWith<$Res>
    implements $QuotesEventCopyWith<$Res> {
  factory _$FetchAllCopyWith(_FetchAll value, $Res Function(_FetchAll) _then) =
      __$FetchAllCopyWithImpl;
  @override
  @useResult
  $Res call({int? bookId});
}

/// @nodoc
class __$FetchAllCopyWithImpl<$Res> implements _$FetchAllCopyWith<$Res> {
  __$FetchAllCopyWithImpl(this._self, this._then);

  final _FetchAll _self;
  final $Res Function(_FetchAll) _then;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = freezed,
  }) {
    return _then(_FetchAll(
      bookId: freezed == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _ChooseBook implements QuotesEvent {
  const _ChooseBook({this.bookId});

  @override
  final int? bookId;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChooseBookCopyWith<_ChooseBook> get copyWith =>
      __$ChooseBookCopyWithImpl<_ChooseBook>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChooseBook &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @override
  String toString() {
    return 'QuotesEvent.chooseBook(bookId: $bookId)';
  }
}

/// @nodoc
abstract mixin class _$ChooseBookCopyWith<$Res>
    implements $QuotesEventCopyWith<$Res> {
  factory _$ChooseBookCopyWith(
          _ChooseBook value, $Res Function(_ChooseBook) _then) =
      __$ChooseBookCopyWithImpl;
  @override
  @useResult
  $Res call({int? bookId});
}

/// @nodoc
class __$ChooseBookCopyWithImpl<$Res> implements _$ChooseBookCopyWith<$Res> {
  __$ChooseBookCopyWithImpl(this._self, this._then);

  final _ChooseBook _self;
  final $Res Function(_ChooseBook) _then;

  /// Create a copy of QuotesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = freezed,
  }) {
    return _then(_ChooseBook(
      bookId: freezed == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$QuotesState {
  bool get isLoading;
  int get selectedBookId;
  QuotesDataEntity? get quotesData;
  String? get message;

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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedBookId, selectedBookId) ||
                other.selectedBookId == selectedBookId) &&
            (identical(other.quotesData, quotesData) ||
                other.quotesData == quotesData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, selectedBookId, quotesData, message);

  @override
  String toString() {
    return 'QuotesState(isLoading: $isLoading, selectedBookId: $selectedBookId, quotesData: $quotesData, message: $message)';
  }
}

/// @nodoc
abstract mixin class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) _then) =
      _$QuotesStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      int selectedBookId,
      QuotesDataEntity? quotesData,
      String? message});
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
    Object? isLoading = null,
    Object? selectedBookId = null,
    Object? quotesData = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedBookId: null == selectedBookId
          ? _self.selectedBookId
          : selectedBookId // ignore: cast_nullable_to_non_nullable
              as int,
      quotesData: freezed == quotesData
          ? _self.quotesData
          : quotesData // ignore: cast_nullable_to_non_nullable
              as QuotesDataEntity?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuotesState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotesState() when $default != null:
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
    TResult Function(_QuotesState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesState():
        return $default(_that);
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
    TResult? Function(_QuotesState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesState() when $default != null:
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
    TResult Function(bool isLoading, int selectedBookId,
            QuotesDataEntity? quotesData, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotesState() when $default != null:
        return $default(_that.isLoading, _that.selectedBookId, _that.quotesData,
            _that.message);
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
    TResult Function(bool isLoading, int selectedBookId,
            QuotesDataEntity? quotesData, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesState():
        return $default(_that.isLoading, _that.selectedBookId, _that.quotesData,
            _that.message);
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
    TResult? Function(bool isLoading, int selectedBookId,
            QuotesDataEntity? quotesData, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotesState() when $default != null:
        return $default(_that.isLoading, _that.selectedBookId, _that.quotesData,
            _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _QuotesState implements QuotesState {
  const _QuotesState(
      {this.isLoading = false,
      this.selectedBookId = 0,
      this.quotesData = null,
      this.message});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int selectedBookId;
  @override
  @JsonKey()
  final QuotesDataEntity? quotesData;
  @override
  final String? message;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuotesStateCopyWith<_QuotesState> get copyWith =>
      __$QuotesStateCopyWithImpl<_QuotesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedBookId, selectedBookId) ||
                other.selectedBookId == selectedBookId) &&
            (identical(other.quotesData, quotesData) ||
                other.quotesData == quotesData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, selectedBookId, quotesData, message);

  @override
  String toString() {
    return 'QuotesState(isLoading: $isLoading, selectedBookId: $selectedBookId, quotesData: $quotesData, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$QuotesStateCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory _$QuotesStateCopyWith(
          _QuotesState value, $Res Function(_QuotesState) _then) =
      __$QuotesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int selectedBookId,
      QuotesDataEntity? quotesData,
      String? message});
}

/// @nodoc
class __$QuotesStateCopyWithImpl<$Res> implements _$QuotesStateCopyWith<$Res> {
  __$QuotesStateCopyWithImpl(this._self, this._then);

  final _QuotesState _self;
  final $Res Function(_QuotesState) _then;

  /// Create a copy of QuotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? selectedBookId = null,
    Object? quotesData = freezed,
    Object? message = freezed,
  }) {
    return _then(_QuotesState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedBookId: null == selectedBookId
          ? _self.selectedBookId
          : selectedBookId // ignore: cast_nullable_to_non_nullable
              as int,
      quotesData: freezed == quotesData
          ? _self.quotesData
          : quotesData // ignore: cast_nullable_to_non_nullable
              as QuotesDataEntity?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
