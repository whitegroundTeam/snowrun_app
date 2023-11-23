// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)
        updateScrollExtent,
    required TResult Function(RidingPlayer ridingPlayer) selectRidingPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult? Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateScrollExtent value) updateScrollExtent,
    required TResult Function(_SelectRidingPlayer value) selectRidingPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult? Function(_SelectRidingPlayer value)? selectRidingPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult Function(_SelectRidingPlayer value)? selectRidingPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingControllerEventCopyWith<$Res> {
  factory $RidingControllerEventCopyWith(RidingControllerEvent value,
          $Res Function(RidingControllerEvent) then) =
      _$RidingControllerEventCopyWithImpl<$Res, RidingControllerEvent>;
}

/// @nodoc
class _$RidingControllerEventCopyWithImpl<$Res,
        $Val extends RidingControllerEvent>
    implements $RidingControllerEventCopyWith<$Res> {
  _$RidingControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateScrollExtentImplCopyWith<$Res> {
  factory _$$UpdateScrollExtentImplCopyWith(_$UpdateScrollExtentImpl value,
          $Res Function(_$UpdateScrollExtentImpl) then) =
      __$$UpdateScrollExtentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double currentExtent, double maxExtent, AxisDirection scrollDirection});
}

/// @nodoc
class __$$UpdateScrollExtentImplCopyWithImpl<$Res>
    extends _$RidingControllerEventCopyWithImpl<$Res, _$UpdateScrollExtentImpl>
    implements _$$UpdateScrollExtentImplCopyWith<$Res> {
  __$$UpdateScrollExtentImplCopyWithImpl(_$UpdateScrollExtentImpl _value,
      $Res Function(_$UpdateScrollExtentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentExtent = null,
    Object? maxExtent = null,
    Object? scrollDirection = null,
  }) {
    return _then(_$UpdateScrollExtentImpl(
      null == currentExtent
          ? _value.currentExtent
          : currentExtent // ignore: cast_nullable_to_non_nullable
              as double,
      null == maxExtent
          ? _value.maxExtent
          : maxExtent // ignore: cast_nullable_to_non_nullable
              as double,
      null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as AxisDirection,
    ));
  }
}

/// @nodoc

class _$UpdateScrollExtentImpl implements _UpdateScrollExtent {
  const _$UpdateScrollExtentImpl(
      this.currentExtent, this.maxExtent, this.scrollDirection);

  @override
  final double currentExtent;
  @override
  final double maxExtent;
  @override
  final AxisDirection scrollDirection;

  @override
  String toString() {
    return 'RidingControllerEvent.updateScrollExtent(currentExtent: $currentExtent, maxExtent: $maxExtent, scrollDirection: $scrollDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateScrollExtentImpl &&
            (identical(other.currentExtent, currentExtent) ||
                other.currentExtent == currentExtent) &&
            (identical(other.maxExtent, maxExtent) ||
                other.maxExtent == maxExtent) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentExtent, maxExtent, scrollDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateScrollExtentImplCopyWith<_$UpdateScrollExtentImpl> get copyWith =>
      __$$UpdateScrollExtentImplCopyWithImpl<_$UpdateScrollExtentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)
        updateScrollExtent,
    required TResult Function(RidingPlayer ridingPlayer) selectRidingPlayer,
  }) {
    return updateScrollExtent(currentExtent, maxExtent, scrollDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult? Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
  }) {
    return updateScrollExtent?.call(currentExtent, maxExtent, scrollDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
    required TResult orElse(),
  }) {
    if (updateScrollExtent != null) {
      return updateScrollExtent(currentExtent, maxExtent, scrollDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateScrollExtent value) updateScrollExtent,
    required TResult Function(_SelectRidingPlayer value) selectRidingPlayer,
  }) {
    return updateScrollExtent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult? Function(_SelectRidingPlayer value)? selectRidingPlayer,
  }) {
    return updateScrollExtent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult Function(_SelectRidingPlayer value)? selectRidingPlayer,
    required TResult orElse(),
  }) {
    if (updateScrollExtent != null) {
      return updateScrollExtent(this);
    }
    return orElse();
  }
}

abstract class _UpdateScrollExtent implements RidingControllerEvent {
  const factory _UpdateScrollExtent(
      final double currentExtent,
      final double maxExtent,
      final AxisDirection scrollDirection) = _$UpdateScrollExtentImpl;

  double get currentExtent;
  double get maxExtent;
  AxisDirection get scrollDirection;
  @JsonKey(ignore: true)
  _$$UpdateScrollExtentImplCopyWith<_$UpdateScrollExtentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRidingPlayerImplCopyWith<$Res> {
  factory _$$SelectRidingPlayerImplCopyWith(_$SelectRidingPlayerImpl value,
          $Res Function(_$SelectRidingPlayerImpl) then) =
      __$$SelectRidingPlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RidingPlayer ridingPlayer});

  $RidingPlayerCopyWith<$Res> get ridingPlayer;
}

/// @nodoc
class __$$SelectRidingPlayerImplCopyWithImpl<$Res>
    extends _$RidingControllerEventCopyWithImpl<$Res, _$SelectRidingPlayerImpl>
    implements _$$SelectRidingPlayerImplCopyWith<$Res> {
  __$$SelectRidingPlayerImplCopyWithImpl(_$SelectRidingPlayerImpl _value,
      $Res Function(_$SelectRidingPlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingPlayer = null,
  }) {
    return _then(_$SelectRidingPlayerImpl(
      null == ridingPlayer
          ? _value.ridingPlayer
          : ridingPlayer // ignore: cast_nullable_to_non_nullable
              as RidingPlayer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingPlayerCopyWith<$Res> get ridingPlayer {
    return $RidingPlayerCopyWith<$Res>(_value.ridingPlayer, (value) {
      return _then(_value.copyWith(ridingPlayer: value));
    });
  }
}

/// @nodoc

class _$SelectRidingPlayerImpl implements _SelectRidingPlayer {
  const _$SelectRidingPlayerImpl(this.ridingPlayer);

  @override
  final RidingPlayer ridingPlayer;

  @override
  String toString() {
    return 'RidingControllerEvent.selectRidingPlayer(ridingPlayer: $ridingPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRidingPlayerImpl &&
            (identical(other.ridingPlayer, ridingPlayer) ||
                other.ridingPlayer == ridingPlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRidingPlayerImplCopyWith<_$SelectRidingPlayerImpl> get copyWith =>
      __$$SelectRidingPlayerImplCopyWithImpl<_$SelectRidingPlayerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)
        updateScrollExtent,
    required TResult Function(RidingPlayer ridingPlayer) selectRidingPlayer,
  }) {
    return selectRidingPlayer(ridingPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult? Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
  }) {
    return selectRidingPlayer?.call(ridingPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double currentExtent, double maxExtent,
            AxisDirection scrollDirection)?
        updateScrollExtent,
    TResult Function(RidingPlayer ridingPlayer)? selectRidingPlayer,
    required TResult orElse(),
  }) {
    if (selectRidingPlayer != null) {
      return selectRidingPlayer(ridingPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateScrollExtent value) updateScrollExtent,
    required TResult Function(_SelectRidingPlayer value) selectRidingPlayer,
  }) {
    return selectRidingPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult? Function(_SelectRidingPlayer value)? selectRidingPlayer,
  }) {
    return selectRidingPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateScrollExtent value)? updateScrollExtent,
    TResult Function(_SelectRidingPlayer value)? selectRidingPlayer,
    required TResult orElse(),
  }) {
    if (selectRidingPlayer != null) {
      return selectRidingPlayer(this);
    }
    return orElse();
  }
}

abstract class _SelectRidingPlayer implements RidingControllerEvent {
  const factory _SelectRidingPlayer(final RidingPlayer ridingPlayer) =
      _$SelectRidingPlayerImpl;

  RidingPlayer get ridingPlayer;
  @JsonKey(ignore: true)
  _$$SelectRidingPlayerImplCopyWith<_$SelectRidingPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingControllerState {
  double get scrolledRatio => throw _privateConstructorUsedError;
  RidingBehavior get ridingBehavior => throw _privateConstructorUsedError;
  RidingPlayer? get ridingPlayer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingControllerStateCopyWith<RidingControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingControllerStateCopyWith<$Res> {
  factory $RidingControllerStateCopyWith(RidingControllerState value,
          $Res Function(RidingControllerState) then) =
      _$RidingControllerStateCopyWithImpl<$Res, RidingControllerState>;
  @useResult
  $Res call(
      {double scrolledRatio,
      RidingBehavior ridingBehavior,
      RidingPlayer? ridingPlayer});

  $RidingPlayerCopyWith<$Res>? get ridingPlayer;
}

/// @nodoc
class _$RidingControllerStateCopyWithImpl<$Res,
        $Val extends RidingControllerState>
    implements $RidingControllerStateCopyWith<$Res> {
  _$RidingControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrolledRatio = null,
    Object? ridingBehavior = null,
    Object? ridingPlayer = freezed,
  }) {
    return _then(_value.copyWith(
      scrolledRatio: null == scrolledRatio
          ? _value.scrolledRatio
          : scrolledRatio // ignore: cast_nullable_to_non_nullable
              as double,
      ridingBehavior: null == ridingBehavior
          ? _value.ridingBehavior
          : ridingBehavior // ignore: cast_nullable_to_non_nullable
              as RidingBehavior,
      ridingPlayer: freezed == ridingPlayer
          ? _value.ridingPlayer
          : ridingPlayer // ignore: cast_nullable_to_non_nullable
              as RidingPlayer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingPlayerCopyWith<$Res>? get ridingPlayer {
    if (_value.ridingPlayer == null) {
      return null;
    }

    return $RidingPlayerCopyWith<$Res>(_value.ridingPlayer!, (value) {
      return _then(_value.copyWith(ridingPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RidingControllerStateImplCopyWith<$Res>
    implements $RidingControllerStateCopyWith<$Res> {
  factory _$$RidingControllerStateImplCopyWith(
          _$RidingControllerStateImpl value,
          $Res Function(_$RidingControllerStateImpl) then) =
      __$$RidingControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scrolledRatio,
      RidingBehavior ridingBehavior,
      RidingPlayer? ridingPlayer});

  @override
  $RidingPlayerCopyWith<$Res>? get ridingPlayer;
}

/// @nodoc
class __$$RidingControllerStateImplCopyWithImpl<$Res>
    extends _$RidingControllerStateCopyWithImpl<$Res,
        _$RidingControllerStateImpl>
    implements _$$RidingControllerStateImplCopyWith<$Res> {
  __$$RidingControllerStateImplCopyWithImpl(_$RidingControllerStateImpl _value,
      $Res Function(_$RidingControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrolledRatio = null,
    Object? ridingBehavior = null,
    Object? ridingPlayer = freezed,
  }) {
    return _then(_$RidingControllerStateImpl(
      scrolledRatio: null == scrolledRatio
          ? _value.scrolledRatio
          : scrolledRatio // ignore: cast_nullable_to_non_nullable
              as double,
      ridingBehavior: null == ridingBehavior
          ? _value.ridingBehavior
          : ridingBehavior // ignore: cast_nullable_to_non_nullable
              as RidingBehavior,
      ridingPlayer: freezed == ridingPlayer
          ? _value.ridingPlayer
          : ridingPlayer // ignore: cast_nullable_to_non_nullable
              as RidingPlayer?,
    ));
  }
}

/// @nodoc

class _$RidingControllerStateImpl implements _RidingControllerState {
  const _$RidingControllerStateImpl(
      {required this.scrolledRatio,
      required this.ridingBehavior,
      this.ridingPlayer});

  @override
  final double scrolledRatio;
  @override
  final RidingBehavior ridingBehavior;
  @override
  final RidingPlayer? ridingPlayer;

  @override
  String toString() {
    return 'RidingControllerState(scrolledRatio: $scrolledRatio, ridingBehavior: $ridingBehavior, ridingPlayer: $ridingPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidingControllerStateImpl &&
            (identical(other.scrolledRatio, scrolledRatio) ||
                other.scrolledRatio == scrolledRatio) &&
            (identical(other.ridingBehavior, ridingBehavior) ||
                other.ridingBehavior == ridingBehavior) &&
            (identical(other.ridingPlayer, ridingPlayer) ||
                other.ridingPlayer == ridingPlayer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scrolledRatio, ridingBehavior, ridingPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidingControllerStateImplCopyWith<_$RidingControllerStateImpl>
      get copyWith => __$$RidingControllerStateImplCopyWithImpl<
          _$RidingControllerStateImpl>(this, _$identity);
}

abstract class _RidingControllerState implements RidingControllerState {
  const factory _RidingControllerState(
      {required final double scrolledRatio,
      required final RidingBehavior ridingBehavior,
      final RidingPlayer? ridingPlayer}) = _$RidingControllerStateImpl;

  @override
  double get scrolledRatio;
  @override
  RidingBehavior get ridingBehavior;
  @override
  RidingPlayer? get ridingPlayer;
  @override
  @JsonKey(ignore: true)
  _$$RidingControllerStateImplCopyWith<_$RidingControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
