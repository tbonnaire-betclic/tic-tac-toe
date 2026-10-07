// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_move_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotMoveError {


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BotMoveError);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BotMoveError()';
  }


}

/// @nodoc
class $BotMoveErrorCopyWith<$Res> {
  $BotMoveErrorCopyWith(BotMoveError _, $Res Function(BotMoveError) __);
}


/// Adds pattern-matching-related methods to [BotMoveError].
extension BotMoveErrorPatterns on BotMoveError {
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

  {

  TResult

  Function

  (

  BotMoveNotBotTurn

  value

  )

  ?

  notBotTurn

  ,

  TResult

  Function

  (

  BotMoveInvalidMove

  value

  )

  ?

  invalidMove

  ,

  TResult

  Function

  (

  BotMoveEngineUnavailable

  value

  )

  ?

  engineUnavailable

  ,

  required

  TResult

  orElse

  (

  )

  ,
}){
final _that = this;
switch (_that) {
case BotMoveNotBotTurn() when notBotTurn != null:
return notBotTurn(_that);case BotMoveInvalidMove() when invalidMove != null:
return invalidMove(_that);case BotMoveEngineUnavailable() when engineUnavailable != null:
return engineUnavailable(_that);case _:
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
    {required TResult Function( BotMoveNotBotTurn value) notBotTurn, required TResult Function( BotMoveInvalidMove value) invalidMove, required TResult Function( BotMoveEngineUnavailable value) engineUnavailable,}) {
  final _that = this;
  switch (_that) {
    case BotMoveNotBotTurn():
      return notBotTurn(_that);
    case BotMoveInvalidMove():
      return invalidMove(_that);
    case BotMoveEngineUnavailable():
      return engineUnavailable(_that);
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
    {TResult? Function( BotMoveNotBotTurn value)? notBotTurn, TResult? Function( BotMoveInvalidMove value)? invalidMove, TResult? Function( BotMoveEngineUnavailable value)? engineUnavailable,}) {
  final _that = this;
  switch (_that) {
    case BotMoveNotBotTurn() when notBotTurn != null:
      return notBotTurn(_that);
    case BotMoveInvalidMove() when invalidMove != null:
      return invalidMove(_that);
    case BotMoveEngineUnavailable() when engineUnavailable != null:
      return engineUnavailable(_that);
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

@optionalTypeArgs TResult maybeWhen
<
TResult extends Object?>(
{
TResult
Function
(
)
?
notBotTurn
,
TResult
Function
(
int
move
)
?
invalidMove
,
TResult
Function
(
Object
?
cause
)
?
engineUnavailable
,
required
TResult
orElse(),}) {final _that = this;
switch (_that) {
case BotMoveNotBotTurn() when notBotTurn != null:
return notBotTurn();case BotMoveInvalidMove() when invalidMove != null:
return invalidMove(_that.move);case BotMoveEngineUnavailable() when engineUnavailable != null:
return engineUnavailable(_that.cause);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function() notBotTurn,required TResult Function( int move) invalidMove,required TResult Function( Object? cause) engineUnavailable,}) {final _that = this;
switch (_that) {
case BotMoveNotBotTurn():
return notBotTurn();case BotMoveInvalidMove():
return invalidMove(_that.move);case BotMoveEngineUnavailable():
return engineUnavailable(_that.cause);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()? notBotTurn,TResult? Function( int move)? invalidMove,TResult? Function( Object? cause)? engineUnavailable,}) {final _that = this;
switch (_that) {
case BotMoveNotBotTurn() when notBotTurn != null:
return notBotTurn();case BotMoveInvalidMove() when invalidMove != null:
return invalidMove(_that.move);case BotMoveEngineUnavailable() when engineUnavailable != null:
return engineUnavailable(_that.cause);case _:
return null;

}
}

}

/// @nodoc


class BotMoveNotBotTurn implements BotMoveError {
const BotMoveNotBotTurn();


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is BotMoveNotBotTurn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
return 'BotMoveError.notBotTurn()';
}


}


/// @nodoc


class BotMoveInvalidMove implements BotMoveError {
const BotMoveInvalidMove(this.move);


final int move;

/// Create a copy of BotMoveError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BotMoveInvalidMoveCopyWith<BotMoveInvalidMove> get copyWith => _$BotMoveInvalidMoveCopyWithImpl<BotMoveInvalidMove>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is BotMoveInvalidMove&&(identical(other.move, move) || other.move == move));
}


@override
int get hashCode {
return Object.hash(runtimeType,move);
}

@override
String toString() {
return 'BotMoveError.invalidMove(move: $move)';
}


}

/// @nodoc
abstract mixin class $BotMoveInvalidMoveCopyWith<$Res> implements $BotMoveErrorCopyWith<$Res> {
factory $BotMoveInvalidMoveCopyWith(BotMoveInvalidMove value, $Res Function(BotMoveInvalidMove) _then) = _$BotMoveInvalidMoveCopyWithImpl;
@useResult
$Res call({
int move
});


}
/// @nodoc
class _$BotMoveInvalidMoveCopyWithImpl<$Res>
implements $BotMoveInvalidMoveCopyWith<$Res> {
_$BotMoveInvalidMoveCopyWithImpl(this._self, this._then);

final BotMoveInvalidMove _self;
final $Res Function(BotMoveInvalidMove) _then;

/// Create a copy of BotMoveError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? move = null,}) {
return _then(BotMoveInvalidMove(
null == move ? _self.move : move // ignore: cast_nullable_to_non_nullable
as int,
));
}


}

/// @nodoc


class BotMoveEngineUnavailable implements BotMoveError {
const BotMoveEngineUnavailable([this.cause]);


final Object? cause;

/// Create a copy of BotMoveError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BotMoveEngineUnavailableCopyWith<BotMoveEngineUnavailable> get copyWith => _$BotMoveEngineUnavailableCopyWithImpl<BotMoveEngineUnavailable>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is BotMoveEngineUnavailable&&const DeepCollectionEquality().equals(other.cause, cause));
}


@override
int get hashCode {
return Object.hash(runtimeType,const DeepCollectionEquality().hash(cause));
}

@override
String toString() {
return 'BotMoveError.engineUnavailable(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $BotMoveEngineUnavailableCopyWith<$Res> implements $BotMoveErrorCopyWith<$Res> {
factory $BotMoveEngineUnavailableCopyWith(BotMoveEngineUnavailable value, $Res Function(BotMoveEngineUnavailable) _then) = _$BotMoveEngineUnavailableCopyWithImpl;
@useResult
$Res call({
Object? cause
});


}
/// @nodoc
class _$BotMoveEngineUnavailableCopyWithImpl<$Res>
implements $BotMoveEngineUnavailableCopyWith<$Res> {
_$BotMoveEngineUnavailableCopyWithImpl(this._self, this._then);

final BotMoveEngineUnavailable _self;
final $Res Function(BotMoveEngineUnavailable) _then;

/// Create a copy of BotMoveError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cause = freezed,}) {
return _then(BotMoveEngineUnavailable(
freezed == cause ? _self.cause : cause ,
));
}


}

// dart format on