// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'human_move_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HumanMoveError {


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HumanMoveError);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HumanMoveError()';
  }


}

/// @nodoc
class $HumanMoveErrorCopyWith<$Res> {
  $HumanMoveErrorCopyWith(HumanMoveError _, $Res Function(HumanMoveError) __);
}


/// Adds pattern-matching-related methods to [HumanMoveError].
extension HumanMoveErrorPatterns on HumanMoveError {
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

  HumanMoveNotHumanTurn

  value

  )

  ?

  notHumanTurn

  ,

  TResult

  Function

  (

  HumanMoveCellTaken

  value

  )

  ?

  cellTaken

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
case HumanMoveNotHumanTurn() when notHumanTurn != null:
return notHumanTurn(_that);case HumanMoveCellTaken() when cellTaken != null:
return cellTaken(_that);case _:
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
    {required TResult Function( HumanMoveNotHumanTurn value) notHumanTurn, required TResult Function( HumanMoveCellTaken value) cellTaken,}) {
  final _that = this;
  switch (_that) {
    case HumanMoveNotHumanTurn():
      return notHumanTurn(_that);
    case HumanMoveCellTaken():
      return cellTaken(_that);
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
    {TResult? Function( HumanMoveNotHumanTurn value)? notHumanTurn, TResult? Function( HumanMoveCellTaken value)? cellTaken,}) {
  final _that = this;
  switch (_that) {
    case HumanMoveNotHumanTurn() when notHumanTurn != null:
      return notHumanTurn(_that);
    case HumanMoveCellTaken() when cellTaken != null:
      return cellTaken(_that);
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
notHumanTurn
,
TResult
Function
(
int
index
)
?
cellTaken
,
required
TResult
orElse(),}) {final _that = this;
switch (_that) {
case HumanMoveNotHumanTurn() when notHumanTurn != null:
return notHumanTurn();case HumanMoveCellTaken() when cellTaken != null:
return cellTaken(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function() notHumanTurn,required TResult Function( int index) cellTaken,}) {final _that = this;
switch (_that) {
case HumanMoveNotHumanTurn():
return notHumanTurn();case HumanMoveCellTaken():
return cellTaken(_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()? notHumanTurn,TResult? Function( int index)? cellTaken,}) {final _that = this;
switch (_that) {
case HumanMoveNotHumanTurn() when notHumanTurn != null:
return notHumanTurn();case HumanMoveCellTaken() when cellTaken != null:
return cellTaken(_that.index);case _:
return null;

}
}

}

/// @nodoc


class HumanMoveNotHumanTurn implements HumanMoveError {
const HumanMoveNotHumanTurn();


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is HumanMoveNotHumanTurn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
return 'HumanMoveError.notHumanTurn()';
}


}


/// @nodoc


class HumanMoveCellTaken implements HumanMoveError {
const HumanMoveCellTaken(this.index);


final int index;

/// Create a copy of HumanMoveError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HumanMoveCellTakenCopyWith<HumanMoveCellTaken> get copyWith => _$HumanMoveCellTakenCopyWithImpl<HumanMoveCellTaken>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is HumanMoveCellTaken&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode {
return Object.hash(runtimeType,index);
}

@override
String toString() {
return 'HumanMoveError.cellTaken(index: $index)';
}


}

/// @nodoc
abstract mixin class $HumanMoveCellTakenCopyWith<$Res> implements $HumanMoveErrorCopyWith<$Res> {
factory $HumanMoveCellTakenCopyWith(HumanMoveCellTaken value, $Res Function(HumanMoveCellTaken) _then) = _$HumanMoveCellTakenCopyWithImpl;
@useResult
$Res call({
int index
});


}
/// @nodoc
class _$HumanMoveCellTakenCopyWithImpl<$Res>
implements $HumanMoveCellTakenCopyWith<$Res> {
_$HumanMoveCellTakenCopyWithImpl(this._self, this._then);

final HumanMoveCellTaken _self;
final $Res Function(HumanMoveCellTaken) _then;

/// Create a copy of HumanMoveError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
return _then(HumanMoveCellTaken(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
));
}


}

// dart format on