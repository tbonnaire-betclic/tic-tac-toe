// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameUiState {

  List<CellUiState> get cells;

  GameStatus get status;

  /// Rematch and home actions, offered once the match cannot continue.
  bool get showEndActions;

  /// Create a copy of GameUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameUiStateCopyWith<GameUiState> get copyWith =>
      _$GameUiStateCopyWithImpl<GameUiState>(this as GameUiState, _$identity);


  @override
  bool operator ==(Object other) {
    final _this = this as GameUiState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameUiState &&
            const DeepCollectionEquality().equals(other.cells, _this.cells) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.showEndActions, _this.showEndActions) ||
                other.showEndActions == _this.showEndActions));
  }


  @override
  int get hashCode {
    final _this = this as GameUiState;
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_this.cells),
        _this.status, _this.showEndActions);
  }

  @override
  String toString() {
    final _this = this as GameUiState;
    return 'GameUiState(cells: ${_this.cells}, status: ${_this
        .status}, showEndActions: ${_this.showEndActions})';
  }


}

/// @nodoc
abstract mixin class $GameUiStateCopyWith<$Res> {
  factory $GameUiStateCopyWith(GameUiState value,
      $Res Function(GameUiState) _then) = _$GameUiStateCopyWithImpl;

  @useResult
  $Res call({
    List<CellUiState> cells, GameStatus status, bool showEndActions
  });


}

/// @nodoc
class _$GameUiStateCopyWithImpl<$Res>
    implements $GameUiStateCopyWith<$Res> {
  _$GameUiStateCopyWithImpl(this._self, this._then);

  final GameUiState _self;
  final $Res Function(GameUiState) _then;

  /// Create a copy of GameUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? cells = null, Object? status = null, Object? showEndActions = null,}) {
    return _then(GameUiState(
      cells: null == cells
          ? _self.cells
          : cells // ignore: cast_nullable_to_non_nullable
      as List<CellUiState>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
      as GameStatus,
      showEndActions: null == showEndActions
          ? _self.showEndActions
          : showEndActions // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }

}


/// Adds pattern-matching-related methods to [GameUiState].
extension GameUiStatePatterns on GameUiState {
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

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _GameUiState value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _GameUiState() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameUiState value) $default,){
  final _that = this;
  switch (_that) {
  case _GameUiState():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameUiState value)? $default,){
  final _that = this;
  switch (_that) {
  case _GameUiState() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CellUiState> cells, GameStatus status, bool showEndActions)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _GameUiState() when $default != null:
  return $default(_that.cells,_that.status,_that.showEndActions);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CellUiState> cells, GameStatus status, bool showEndActions) $default,) {final _that = this;
  switch (_that) {
  case _GameUiState():
  return $default(_that.cells,_that.status,_that.showEndActions);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CellUiState> cells, GameStatus status, bool showEndActions)? $default,) {final _that = this;
  switch (_that) {
  case _GameUiState() when $default != null:
  return $default(_that.cells,_that.status,_that.showEndActions);case _:
  return null;

  }
  }

}

/// @nodoc


class _GameUiState implements GameUiState {
  const _GameUiState({required List<
      CellUiState> cells, required this.status, required this.showEndActions})
      : _cells = cells;


  final List<CellUiState> _cells;

  @override List<CellUiState> get cells {
    if (_cells is EqualUnmodifiableListView) return _cells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cells);
  }

  @override final GameStatus status;

  /// Rematch and home actions, offered once the match cannot continue.
  @override final bool showEndActions;

  /// Create a copy of GameUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameUiStateCopyWith<_GameUiState> get copyWith =>
      __$GameUiStateCopyWithImpl<_GameUiState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameUiState &&
            const DeepCollectionEquality().equals(other.cells, _cells) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.showEndActions, showEndActions) ||
                other.showEndActions == showEndActions));
  }


  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_cells), status,
        showEndActions);
  }

  @override
  String toString() {
    return 'GameUiState(cells: $cells, status: $status, showEndActions: $showEndActions)';
  }


}

/// @nodoc
abstract mixin class _$GameUiStateCopyWith<$Res>
    implements $GameUiStateCopyWith<$Res> {
  factory _$GameUiStateCopyWith(_GameUiState value,
      $Res Function(_GameUiState) _then) = __$GameUiStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    List<CellUiState> cells, GameStatus status, bool showEndActions
  });


}

/// @nodoc
class __$GameUiStateCopyWithImpl<$Res>
    implements _$GameUiStateCopyWith<$Res> {
  __$GameUiStateCopyWithImpl(this._self, this._then);

  final _GameUiState _self;
  final $Res Function(_GameUiState) _then;

  /// Create a copy of GameUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? cells = null, Object? status = null, Object? showEndActions = null,}) {
    return _then(_GameUiState(
      cells: null == cells
          ? _self._cells
          : cells // ignore: cast_nullable_to_non_nullable
      as List<CellUiState>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
      as GameStatus,
      showEndActions: null == showEndActions
          ? _self.showEndActions
          : showEndActions // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }


}

/// @nodoc
mixin _$CellUiState {

  bool get highlighted;

  Mark? get mark;

  /// Create a copy of CellUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CellUiStateCopyWith<CellUiState> get copyWith =>
      _$CellUiStateCopyWithImpl<CellUiState>(this as CellUiState, _$identity);


  @override
  bool operator ==(Object other) {
    final _this = this as CellUiState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CellUiState &&
            (identical(other.highlighted, _this.highlighted) ||
                other.highlighted == _this.highlighted) &&
            (identical(other.mark, _this.mark) || other.mark == _this.mark));
  }


  @override
  int get hashCode {
    final _this = this as CellUiState;
    return Object.hash(runtimeType, _this.highlighted, _this.mark);
  }

  @override
  String toString() {
    final _this = this as CellUiState;
    return 'CellUiState(highlighted: ${_this.highlighted}, mark: ${_this
        .mark})';
  }


}

/// @nodoc
abstract mixin class $CellUiStateCopyWith<$Res> {
  factory $CellUiStateCopyWith(CellUiState value,
      $Res Function(CellUiState) _then) = _$CellUiStateCopyWithImpl;

  @useResult
  $Res call({
    bool highlighted, Mark? mark
  });


}

/// @nodoc
class _$CellUiStateCopyWithImpl<$Res>
    implements $CellUiStateCopyWith<$Res> {
  _$CellUiStateCopyWithImpl(this._self, this._then);

  final CellUiState _self;
  final $Res Function(CellUiState) _then;

  /// Create a copy of CellUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? highlighted = null, Object? mark = freezed,}) {
    return _then(CellUiState(
      highlighted: null == highlighted
          ? _self.highlighted
          : highlighted // ignore: cast_nullable_to_non_nullable
      as bool,
      mark: freezed == mark
          ? _self.mark
          : mark // ignore: cast_nullable_to_non_nullable
      as Mark?,
    ));
  }

}


/// Adds pattern-matching-related methods to [CellUiState].
extension CellUiStatePatterns on CellUiState {
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

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _CellUiState value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _CellUiState() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellUiState value) $default,){
  final _that = this;
  switch (_that) {
  case _CellUiState():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellUiState value)? $default,){
  final _that = this;
  switch (_that) {
  case _CellUiState() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool highlighted, Mark? mark)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _CellUiState() when $default != null:
  return $default(_that.highlighted,_that.mark);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool highlighted, Mark? mark) $default,) {final _that = this;
  switch (_that) {
  case _CellUiState():
  return $default(_that.highlighted,_that.mark);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool highlighted, Mark? mark)? $default,) {final _that = this;
  switch (_that) {
  case _CellUiState() when $default != null:
  return $default(_that.highlighted,_that.mark);case _:
  return null;

  }
  }

}

/// @nodoc


class _CellUiState implements CellUiState {
  const _CellUiState({required this.highlighted, this.mark});


  @override final bool highlighted;
  @override final Mark? mark;

  /// Create a copy of CellUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CellUiStateCopyWith<_CellUiState> get copyWith =>
      __$CellUiStateCopyWithImpl<_CellUiState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CellUiState &&
            (identical(other.highlighted, highlighted) ||
                other.highlighted == highlighted) &&
            (identical(other.mark, mark) || other.mark == mark));
  }


  @override
  int get hashCode {
    return Object.hash(runtimeType, highlighted, mark);
  }

  @override
  String toString() {
    return 'CellUiState(highlighted: $highlighted, mark: $mark)';
  }


}

/// @nodoc
abstract mixin class _$CellUiStateCopyWith<$Res>
    implements $CellUiStateCopyWith<$Res> {
  factory _$CellUiStateCopyWith(_CellUiState value,
      $Res Function(_CellUiState) _then) = __$CellUiStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    bool highlighted, Mark? mark
  });


}

/// @nodoc
class __$CellUiStateCopyWithImpl<$Res>
    implements _$CellUiStateCopyWith<$Res> {
  __$CellUiStateCopyWithImpl(this._self, this._then);

  final _CellUiState _self;
  final $Res Function(_CellUiState) _then;

  /// Create a copy of CellUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? highlighted = null, Object? mark = freezed,}) {
    return _then(_CellUiState(
      highlighted: null == highlighted
          ? _self.highlighted
          : highlighted // ignore: cast_nullable_to_non_nullable
      as bool,
      mark: freezed == mark
          ? _self.mark
          : mark // ignore: cast_nullable_to_non_nullable
      as Mark?,
    ));
  }


}

// dart format on