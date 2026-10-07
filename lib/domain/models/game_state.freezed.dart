// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameState {

  /// Board cells, indexed by `row * 3 + col`. `null` means empty.
  List<Mark?> get cells;

  Mark get currentPlayer;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<GameState> get copyWith =>
      _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);


  @override
  bool operator ==(Object other) {
    final _this = this as GameState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameState &&
            const DeepCollectionEquality().equals(other.cells, _this.cells) &&
            (identical(other.currentPlayer, _this.currentPlayer) ||
                other.currentPlayer == _this.currentPlayer));
  }


  @override
  int get hashCode {
    final _this = this as GameState;
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_this.cells),
        _this.currentPlayer);
  }

  @override
  String toString() {
    final _this = this as GameState;
    return 'GameState(cells: ${_this.cells}, currentPlayer: ${_this
        .currentPlayer})';
  }


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value,
      $Res Function(GameState) _then) = _$GameStateCopyWithImpl;

  @useResult
  $Res call({
    List<Mark?> cells, Mark currentPlayer
  });


}

/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cells = null, Object? currentPlayer = null,}) {
    return _then(GameState(
      cells: null == cells
          ? _self.cells
          : cells // ignore: cast_nullable_to_non_nullable
      as List<Mark?>,
      currentPlayer: null == currentPlayer
          ? _self.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
      as Mark,
    ));
  }

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

  TResult Function( _GameState value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _GameState() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value) $default,){
  final _that = this;
  switch (_that) {
  case _GameState():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)? $default,){
  final _that = this;
  switch (_that) {
  case _GameState() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Mark?> cells, Mark currentPlayer)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _GameState() when $default != null:
  return $default(_that.cells,_that.currentPlayer);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Mark?> cells, Mark currentPlayer) $default,) {final _that = this;
  switch (_that) {
  case _GameState():
  return $default(_that.cells,_that.currentPlayer);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Mark?> cells, Mark currentPlayer)? $default,) {final _that = this;
  switch (_that) {
  case _GameState() when $default != null:
  return $default(_that.cells,_that.currentPlayer);case _:
  return null;

  }
  }

}

/// @nodoc


class _GameState extends GameState {
  const _GameState({ List<Mark?> cells = const [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  ], this.currentPlayer = Mark.cross})
      : _cells = cells,
        super._();


  /// Board cells, indexed by `row * 3 + col`. `null` means empty.
  final List<Mark?> _cells;

  /// Board cells, indexed by `row * 3 + col`. `null` means empty.
  @override
  @JsonKey()
  List<Mark?> get cells {
    if (_cells is EqualUnmodifiableListView) return _cells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cells);
  }

  @override
  @JsonKey()
  final Mark currentPlayer;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameState &&
            const DeepCollectionEquality().equals(other.cells, _cells) &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer));
  }


  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(_cells),
        currentPlayer);
  }

  @override
  String toString() {
    return 'GameState(cells: $cells, currentPlayer: $currentPlayer)';
  }


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value,
      $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    List<Mark?> cells, Mark currentPlayer
  });


}

/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? cells = null, Object? currentPlayer = null,}) {
    return _then(_GameState(
      cells: null == cells
          ? _self._cells
          : cells // ignore: cast_nullable_to_non_nullable
      as List<Mark?>,
      currentPlayer: null == currentPlayer
          ? _self.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
      as Mark,
    ));
  }


}

// dart format on