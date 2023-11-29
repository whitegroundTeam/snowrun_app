// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRidingRoom,
    required TResult Function(int ridingRoomId) deleteRidingRoom,
    required TResult Function(int ridingRoomId) exitRidingRoom,
    required TResult Function(int ridingRoomId) joinRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRidingRoom,
    TResult? Function(int ridingRoomId)? deleteRidingRoom,
    TResult? Function(int ridingRoomId)? exitRidingRoom,
    TResult? Function(int ridingRoomId)? joinRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRidingRoom,
    TResult Function(int ridingRoomId)? deleteRidingRoom,
    TResult Function(int ridingRoomId)? exitRidingRoom,
    TResult Function(int ridingRoomId)? joinRidingRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRidingRoom value) createRidingRoom,
    required TResult Function(_DeleteRidingRoom value) deleteRidingRoom,
    required TResult Function(_ExitRidingRoom value) exitRidingRoom,
    required TResult Function(_JoinRidingRoom value) joinRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRidingRoom value)? createRidingRoom,
    TResult? Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult? Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult? Function(_JoinRidingRoom value)? joinRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRidingRoom value)? createRidingRoom,
    TResult Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult Function(_JoinRidingRoom value)? joinRidingRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingActorEventCopyWith<$Res> {
  factory $RidingActorEventCopyWith(
          RidingActorEvent value, $Res Function(RidingActorEvent) then) =
      _$RidingActorEventCopyWithImpl<$Res, RidingActorEvent>;
}

/// @nodoc
class _$RidingActorEventCopyWithImpl<$Res, $Val extends RidingActorEvent>
    implements $RidingActorEventCopyWith<$Res> {
  _$RidingActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateRidingRoomImplCopyWith<$Res> {
  factory _$$CreateRidingRoomImplCopyWith(_$CreateRidingRoomImpl value,
          $Res Function(_$CreateRidingRoomImpl) then) =
      __$$CreateRidingRoomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$CreateRidingRoomImpl>
    implements _$$CreateRidingRoomImplCopyWith<$Res> {
  __$$CreateRidingRoomImplCopyWithImpl(_$CreateRidingRoomImpl _value,
      $Res Function(_$CreateRidingRoomImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRidingRoomImpl implements _CreateRidingRoom {
  const _$CreateRidingRoomImpl();

  @override
  String toString() {
    return 'RidingActorEvent.createRidingRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateRidingRoomImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRidingRoom,
    required TResult Function(int ridingRoomId) deleteRidingRoom,
    required TResult Function(int ridingRoomId) exitRidingRoom,
    required TResult Function(int ridingRoomId) joinRidingRoom,
  }) {
    return createRidingRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRidingRoom,
    TResult? Function(int ridingRoomId)? deleteRidingRoom,
    TResult? Function(int ridingRoomId)? exitRidingRoom,
    TResult? Function(int ridingRoomId)? joinRidingRoom,
  }) {
    return createRidingRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRidingRoom,
    TResult Function(int ridingRoomId)? deleteRidingRoom,
    TResult Function(int ridingRoomId)? exitRidingRoom,
    TResult Function(int ridingRoomId)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (createRidingRoom != null) {
      return createRidingRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRidingRoom value) createRidingRoom,
    required TResult Function(_DeleteRidingRoom value) deleteRidingRoom,
    required TResult Function(_ExitRidingRoom value) exitRidingRoom,
    required TResult Function(_JoinRidingRoom value) joinRidingRoom,
  }) {
    return createRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRidingRoom value)? createRidingRoom,
    TResult? Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult? Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult? Function(_JoinRidingRoom value)? joinRidingRoom,
  }) {
    return createRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRidingRoom value)? createRidingRoom,
    TResult Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult Function(_JoinRidingRoom value)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (createRidingRoom != null) {
      return createRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateRidingRoom implements RidingActorEvent {
  const factory _CreateRidingRoom() = _$CreateRidingRoomImpl;
}

/// @nodoc
abstract class _$$DeleteRidingRoomImplCopyWith<$Res> {
  factory _$$DeleteRidingRoomImplCopyWith(_$DeleteRidingRoomImpl value,
          $Res Function(_$DeleteRidingRoomImpl) then) =
      __$$DeleteRidingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$DeleteRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$DeleteRidingRoomImpl>
    implements _$$DeleteRidingRoomImplCopyWith<$Res> {
  __$$DeleteRidingRoomImplCopyWithImpl(_$DeleteRidingRoomImpl _value,
      $Res Function(_$DeleteRidingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$DeleteRidingRoomImpl(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteRidingRoomImpl implements _DeleteRidingRoom {
  const _$DeleteRidingRoomImpl(this.ridingRoomId);

  @override
  final int ridingRoomId;

  @override
  String toString() {
    return 'RidingActorEvent.deleteRidingRoom(ridingRoomId: $ridingRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRidingRoomImpl &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRidingRoomImplCopyWith<_$DeleteRidingRoomImpl> get copyWith =>
      __$$DeleteRidingRoomImplCopyWithImpl<_$DeleteRidingRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRidingRoom,
    required TResult Function(int ridingRoomId) deleteRidingRoom,
    required TResult Function(int ridingRoomId) exitRidingRoom,
    required TResult Function(int ridingRoomId) joinRidingRoom,
  }) {
    return deleteRidingRoom(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRidingRoom,
    TResult? Function(int ridingRoomId)? deleteRidingRoom,
    TResult? Function(int ridingRoomId)? exitRidingRoom,
    TResult? Function(int ridingRoomId)? joinRidingRoom,
  }) {
    return deleteRidingRoom?.call(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRidingRoom,
    TResult Function(int ridingRoomId)? deleteRidingRoom,
    TResult Function(int ridingRoomId)? exitRidingRoom,
    TResult Function(int ridingRoomId)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (deleteRidingRoom != null) {
      return deleteRidingRoom(ridingRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRidingRoom value) createRidingRoom,
    required TResult Function(_DeleteRidingRoom value) deleteRidingRoom,
    required TResult Function(_ExitRidingRoom value) exitRidingRoom,
    required TResult Function(_JoinRidingRoom value) joinRidingRoom,
  }) {
    return deleteRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRidingRoom value)? createRidingRoom,
    TResult? Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult? Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult? Function(_JoinRidingRoom value)? joinRidingRoom,
  }) {
    return deleteRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRidingRoom value)? createRidingRoom,
    TResult Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult Function(_JoinRidingRoom value)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (deleteRidingRoom != null) {
      return deleteRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _DeleteRidingRoom implements RidingActorEvent {
  const factory _DeleteRidingRoom(final int ridingRoomId) =
      _$DeleteRidingRoomImpl;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$DeleteRidingRoomImplCopyWith<_$DeleteRidingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitRidingRoomImplCopyWith<$Res> {
  factory _$$ExitRidingRoomImplCopyWith(_$ExitRidingRoomImpl value,
          $Res Function(_$ExitRidingRoomImpl) then) =
      __$$ExitRidingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$ExitRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$ExitRidingRoomImpl>
    implements _$$ExitRidingRoomImplCopyWith<$Res> {
  __$$ExitRidingRoomImplCopyWithImpl(
      _$ExitRidingRoomImpl _value, $Res Function(_$ExitRidingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$ExitRidingRoomImpl(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExitRidingRoomImpl implements _ExitRidingRoom {
  const _$ExitRidingRoomImpl(this.ridingRoomId);

  @override
  final int ridingRoomId;

  @override
  String toString() {
    return 'RidingActorEvent.exitRidingRoom(ridingRoomId: $ridingRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitRidingRoomImpl &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitRidingRoomImplCopyWith<_$ExitRidingRoomImpl> get copyWith =>
      __$$ExitRidingRoomImplCopyWithImpl<_$ExitRidingRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRidingRoom,
    required TResult Function(int ridingRoomId) deleteRidingRoom,
    required TResult Function(int ridingRoomId) exitRidingRoom,
    required TResult Function(int ridingRoomId) joinRidingRoom,
  }) {
    return exitRidingRoom(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRidingRoom,
    TResult? Function(int ridingRoomId)? deleteRidingRoom,
    TResult? Function(int ridingRoomId)? exitRidingRoom,
    TResult? Function(int ridingRoomId)? joinRidingRoom,
  }) {
    return exitRidingRoom?.call(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRidingRoom,
    TResult Function(int ridingRoomId)? deleteRidingRoom,
    TResult Function(int ridingRoomId)? exitRidingRoom,
    TResult Function(int ridingRoomId)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (exitRidingRoom != null) {
      return exitRidingRoom(ridingRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRidingRoom value) createRidingRoom,
    required TResult Function(_DeleteRidingRoom value) deleteRidingRoom,
    required TResult Function(_ExitRidingRoom value) exitRidingRoom,
    required TResult Function(_JoinRidingRoom value) joinRidingRoom,
  }) {
    return exitRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRidingRoom value)? createRidingRoom,
    TResult? Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult? Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult? Function(_JoinRidingRoom value)? joinRidingRoom,
  }) {
    return exitRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRidingRoom value)? createRidingRoom,
    TResult Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult Function(_JoinRidingRoom value)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (exitRidingRoom != null) {
      return exitRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _ExitRidingRoom implements RidingActorEvent {
  const factory _ExitRidingRoom(final int ridingRoomId) = _$ExitRidingRoomImpl;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$ExitRidingRoomImplCopyWith<_$ExitRidingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRidingRoomImplCopyWith<$Res> {
  factory _$$JoinRidingRoomImplCopyWith(_$JoinRidingRoomImpl value,
          $Res Function(_$JoinRidingRoomImpl) then) =
      __$$JoinRidingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$JoinRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$JoinRidingRoomImpl>
    implements _$$JoinRidingRoomImplCopyWith<$Res> {
  __$$JoinRidingRoomImplCopyWithImpl(
      _$JoinRidingRoomImpl _value, $Res Function(_$JoinRidingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$JoinRidingRoomImpl(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$JoinRidingRoomImpl implements _JoinRidingRoom {
  const _$JoinRidingRoomImpl(this.ridingRoomId);

  @override
  final int ridingRoomId;

  @override
  String toString() {
    return 'RidingActorEvent.joinRidingRoom(ridingRoomId: $ridingRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRidingRoomImpl &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRidingRoomImplCopyWith<_$JoinRidingRoomImpl> get copyWith =>
      __$$JoinRidingRoomImplCopyWithImpl<_$JoinRidingRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRidingRoom,
    required TResult Function(int ridingRoomId) deleteRidingRoom,
    required TResult Function(int ridingRoomId) exitRidingRoom,
    required TResult Function(int ridingRoomId) joinRidingRoom,
  }) {
    return joinRidingRoom(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRidingRoom,
    TResult? Function(int ridingRoomId)? deleteRidingRoom,
    TResult? Function(int ridingRoomId)? exitRidingRoom,
    TResult? Function(int ridingRoomId)? joinRidingRoom,
  }) {
    return joinRidingRoom?.call(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRidingRoom,
    TResult Function(int ridingRoomId)? deleteRidingRoom,
    TResult Function(int ridingRoomId)? exitRidingRoom,
    TResult Function(int ridingRoomId)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (joinRidingRoom != null) {
      return joinRidingRoom(ridingRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRidingRoom value) createRidingRoom,
    required TResult Function(_DeleteRidingRoom value) deleteRidingRoom,
    required TResult Function(_ExitRidingRoom value) exitRidingRoom,
    required TResult Function(_JoinRidingRoom value) joinRidingRoom,
  }) {
    return joinRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRidingRoom value)? createRidingRoom,
    TResult? Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult? Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult? Function(_JoinRidingRoom value)? joinRidingRoom,
  }) {
    return joinRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRidingRoom value)? createRidingRoom,
    TResult Function(_DeleteRidingRoom value)? deleteRidingRoom,
    TResult Function(_ExitRidingRoom value)? exitRidingRoom,
    TResult Function(_JoinRidingRoom value)? joinRidingRoom,
    required TResult orElse(),
  }) {
    if (joinRidingRoom != null) {
      return joinRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _JoinRidingRoom implements RidingActorEvent {
  const factory _JoinRidingRoom(final int ridingRoomId) = _$JoinRidingRoomImpl;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$JoinRidingRoomImplCopyWith<_$JoinRidingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingActorState {
  RidingActorStatus get status => throw _privateConstructorUsedError;
  RidingRoom? get createdRidingRoom => throw _privateConstructorUsedError;
  RidingRoom? get joinedRidingRoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingActorStateCopyWith<RidingActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingActorStateCopyWith<$Res> {
  factory $RidingActorStateCopyWith(
          RidingActorState value, $Res Function(RidingActorState) then) =
      _$RidingActorStateCopyWithImpl<$Res, RidingActorState>;
  @useResult
  $Res call(
      {RidingActorStatus status,
      RidingRoom? createdRidingRoom,
      RidingRoom? joinedRidingRoom});

  $RidingRoomCopyWith<$Res>? get createdRidingRoom;
  $RidingRoomCopyWith<$Res>? get joinedRidingRoom;
}

/// @nodoc
class _$RidingActorStateCopyWithImpl<$Res, $Val extends RidingActorState>
    implements $RidingActorStateCopyWith<$Res> {
  _$RidingActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createdRidingRoom = freezed,
    Object? joinedRidingRoom = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RidingActorStatus,
      createdRidingRoom: freezed == createdRidingRoom
          ? _value.createdRidingRoom
          : createdRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
      joinedRidingRoom: freezed == joinedRidingRoom
          ? _value.joinedRidingRoom
          : joinedRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingRoomCopyWith<$Res>? get createdRidingRoom {
    if (_value.createdRidingRoom == null) {
      return null;
    }

    return $RidingRoomCopyWith<$Res>(_value.createdRidingRoom!, (value) {
      return _then(_value.copyWith(createdRidingRoom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingRoomCopyWith<$Res>? get joinedRidingRoom {
    if (_value.joinedRidingRoom == null) {
      return null;
    }

    return $RidingRoomCopyWith<$Res>(_value.joinedRidingRoom!, (value) {
      return _then(_value.copyWith(joinedRidingRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RidingActorStateImplCopyWith<$Res>
    implements $RidingActorStateCopyWith<$Res> {
  factory _$$RidingActorStateImplCopyWith(_$RidingActorStateImpl value,
          $Res Function(_$RidingActorStateImpl) then) =
      __$$RidingActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RidingActorStatus status,
      RidingRoom? createdRidingRoom,
      RidingRoom? joinedRidingRoom});

  @override
  $RidingRoomCopyWith<$Res>? get createdRidingRoom;
  @override
  $RidingRoomCopyWith<$Res>? get joinedRidingRoom;
}

/// @nodoc
class __$$RidingActorStateImplCopyWithImpl<$Res>
    extends _$RidingActorStateCopyWithImpl<$Res, _$RidingActorStateImpl>
    implements _$$RidingActorStateImplCopyWith<$Res> {
  __$$RidingActorStateImplCopyWithImpl(_$RidingActorStateImpl _value,
      $Res Function(_$RidingActorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createdRidingRoom = freezed,
    Object? joinedRidingRoom = freezed,
  }) {
    return _then(_$RidingActorStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RidingActorStatus,
      createdRidingRoom: freezed == createdRidingRoom
          ? _value.createdRidingRoom
          : createdRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
      joinedRidingRoom: freezed == joinedRidingRoom
          ? _value.joinedRidingRoom
          : joinedRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
    ));
  }
}

/// @nodoc

class _$RidingActorStateImpl implements _RidingActorState {
  const _$RidingActorStateImpl(
      {required this.status, this.createdRidingRoom, this.joinedRidingRoom});

  @override
  final RidingActorStatus status;
  @override
  final RidingRoom? createdRidingRoom;
  @override
  final RidingRoom? joinedRidingRoom;

  @override
  String toString() {
    return 'RidingActorState(status: $status, createdRidingRoom: $createdRidingRoom, joinedRidingRoom: $joinedRidingRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidingActorStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdRidingRoom, createdRidingRoom) ||
                other.createdRidingRoom == createdRidingRoom) &&
            (identical(other.joinedRidingRoom, joinedRidingRoom) ||
                other.joinedRidingRoom == joinedRidingRoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, createdRidingRoom, joinedRidingRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidingActorStateImplCopyWith<_$RidingActorStateImpl> get copyWith =>
      __$$RidingActorStateImplCopyWithImpl<_$RidingActorStateImpl>(
          this, _$identity);
}

abstract class _RidingActorState implements RidingActorState {
  const factory _RidingActorState(
      {required final RidingActorStatus status,
      final RidingRoom? createdRidingRoom,
      final RidingRoom? joinedRidingRoom}) = _$RidingActorStateImpl;

  @override
  RidingActorStatus get status;
  @override
  RidingRoom? get createdRidingRoom;
  @override
  RidingRoom? get joinedRidingRoom;
  @override
  @JsonKey(ignore: true)
  _$$RidingActorStateImplCopyWith<_$RidingActorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
