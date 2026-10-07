// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchConfig {

  BotLevel get botLevel;

  Mark get humanMark;

  /// Create a copy of MatchConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MatchConfigCopyWith<MatchConfig> get copyWith =>
      _$MatchConfigCopyWithImpl<MatchConfig>(this as MatchConfig, _$identity);


  @override
  bool operator ==(Object other) {
    final _this = this as MatchConfig;
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MatchConfig &&
            (identical(other.botLevel, _this.botLevel) ||
                other.botLevel == _this.botLevel) &&
            (identical(other.humanMark, _this.humanMark) ||
                other.humanMark == _this.humanMark));
  }


  @override
  int get hashCode {
    final _this = this as MatchConfig;
    return Object.hash(runtimeType, _this.botLevel, _this.humanMark);
  }

  @override
  String toString() {
    final _this = this as MatchConfig;
    return 'MatchConfig(botLevel: ${_this.botLevel}, humanMark: ${_this
        .humanMark})';
  }


}

/// @nodoc
abstract mixin class $MatchConfigCopyWith<$Res> {
  factory $MatchConfigCopyWith(MatchConfig value,
      $Res Function(MatchConfig) _then) = _$MatchConfigCopyWithImpl;

  @useResult
  $Res call({
    BotLevel botLevel, Mark humanMark
  });


}

/// @nodoc
class _$MatchConfigCopyWithImpl<$Res>
    implements $MatchConfigCopyWith<$Res> {
  _$MatchConfigCopyWithImpl(this._self, this._then);

  final MatchConfig _self;
  final $Res Function(MatchConfig) _then;

  /// Create a copy of MatchConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? botLevel = null, Object? humanMark = null,}) {
    return _then(MatchConfig(
      botLevel: null == botLevel
          ? _self.botLevel
          : botLevel // ignore: cast_nullable_to_non_nullable
      as BotLevel,
      humanMark: null == humanMark
          ? _self.humanMark
          : humanMark // ignore: cast_nullable_to_non_nullable
      as Mark,
    ));
  }

}


/// Adds pattern-matching-related methods to [MatchConfig].
extension MatchConfigPatterns on MatchConfig {
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

  TResult Function( _MatchConfig value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _MatchConfig() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchConfig value) $default,){
  final _that = this;
  switch (_that) {
  case _MatchConfig():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchConfig value)? $default,){
  final _that = this;
  switch (_that) {
  case _MatchConfig() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BotLevel botLevel, Mark humanMark)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _MatchConfig() when $default != null:
  return $default(_that.botLevel,_that.humanMark);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BotLevel botLevel, Mark humanMark) $default,) {final _that = this;
  switch (_that) {
  case _MatchConfig():
  return $default(_that.botLevel,_that.humanMark);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BotLevel botLevel, Mark humanMark)? $default,) {final _that = this;
  switch (_that) {
  case _MatchConfig() when $default != null:
  return $default(_that.botLevel,_that.humanMark);case _:
  return null;

  }
  }

}

/// @nodoc


class _MatchConfig extends MatchConfig {
  const _MatchConfig({required this.botLevel, required this.humanMark})
      : super._();


  @override final BotLevel botLevel;
  @override final Mark humanMark;

  /// Create a copy of MatchConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MatchConfigCopyWith<_MatchConfig> get copyWith =>
      __$MatchConfigCopyWithImpl<_MatchConfig>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MatchConfig &&
            (identical(other.botLevel, botLevel) ||
                other.botLevel == botLevel) &&
            (identical(other.humanMark, humanMark) ||
                other.humanMark == humanMark));
  }


  @override
  int get hashCode {
    return Object.hash(runtimeType, botLevel, humanMark);
  }

  @override
  String toString() {
    return 'MatchConfig(botLevel: $botLevel, humanMark: $humanMark)';
  }


}

/// @nodoc
abstract mixin class _$MatchConfigCopyWith<$Res>
    implements $MatchConfigCopyWith<$Res> {
  factory _$MatchConfigCopyWith(_MatchConfig value,
      $Res Function(_MatchConfig) _then) = __$MatchConfigCopyWithImpl;

  @override
  @useResult
  $Res call({
    BotLevel botLevel, Mark humanMark
  });


}

/// @nodoc
class __$MatchConfigCopyWithImpl<$Res>
    implements _$MatchConfigCopyWith<$Res> {
  __$MatchConfigCopyWithImpl(this._self, this._then);

  final _MatchConfig _self;
  final $Res Function(_MatchConfig) _then;

  /// Create a copy of MatchConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? botLevel = null, Object? humanMark = null,}) {
    return _then(_MatchConfig(
      botLevel: null == botLevel
          ? _self.botLevel
          : botLevel // ignore: cast_nullable_to_non_nullable
      as BotLevel,
      humanMark: null == humanMark
          ? _self.humanMark
          : humanMark // ignore: cast_nullable_to_non_nullable
      as Mark,
    ));
  }


}

// dart format on