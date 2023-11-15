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
abstract class _$$_CreateRidingRoomCopyWith<$Res> {
  factory _$$_CreateRidingRoomCopyWith(
          _$_CreateRidingRoom value, $Res Function(_$_CreateRidingRoom) then) =
      __$$_CreateRidingRoomCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateRidingRoomCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$_CreateRidingRoom>
    implements _$$_CreateRidingRoomCopyWith<$Res> {
  __$$_CreateRidingRoomCopyWithImpl(
      _$_CreateRidingRoom _value, $Res Function(_$_CreateRidingRoom) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateRidingRoom implements _CreateRidingRoom {
  const _$_CreateRidingRoom();

  @override
  String toString() {
    return 'RidingActorEvent.createRidingRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateRidingRoom);
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
  const factory _CreateRidingRoom() = _$_CreateRidingRoom;
}

/// @nodoc
abstract class _$$_DeleteRidingRoomCopyWith<$Res> {
  factory _$$_DeleteRidingRoomCopyWith(
          _$_DeleteRidingRoom value, $Res Function(_$_DeleteRidingRoom) then) =
      __$$_DeleteRidingRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$_DeleteRidingRoomCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$_DeleteRidingRoom>
    implements _$$_DeleteRidingRoomCopyWith<$Res> {
  __$$_DeleteRidingRoomCopyWithImpl(
      _$_DeleteRidingRoom _value, $Res Function(_$_DeleteRidingRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$_DeleteRidingRoom(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteRidingRoom implements _DeleteRidingRoom {
  const _$_DeleteRidingRoom(this.ridingRoomId);

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
            other is _$_DeleteRidingRoom &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRidingRoomCopyWith<_$_DeleteRidingRoom> get copyWith =>
      __$$_DeleteRidingRoomCopyWithImpl<_$_DeleteRidingRoom>(this, _$identity);

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
  const factory _DeleteRidingRoom(final int ridingRoomId) = _$_DeleteRidingRoom;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$_DeleteRidingRoomCopyWith<_$_DeleteRidingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExitRidingRoomCopyWith<$Res> {
  factory _$$_ExitRidingRoomCopyWith(
          _$_ExitRidingRoom value, $Res Function(_$_ExitRidingRoom) then) =
      __$$_ExitRidingRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$_ExitRidingRoomCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$_ExitRidingRoom>
    implements _$$_ExitRidingRoomCopyWith<$Res> {
  __$$_ExitRidingRoomCopyWithImpl(
      _$_ExitRidingRoom _value, $Res Function(_$_ExitRidingRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$_ExitRidingRoom(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExitRidingRoom implements _ExitRidingRoom {
  const _$_ExitRidingRoom(this.ridingRoomId);

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
            other is _$_ExitRidingRoom &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExitRidingRoomCopyWith<_$_ExitRidingRoom> get copyWith =>
      __$$_ExitRidingRoomCopyWithImpl<_$_ExitRidingRoom>(this, _$identity);

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
  const factory _ExitRidingRoom(final int ridingRoomId) = _$_ExitRidingRoom;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$_ExitRidingRoomCopyWith<_$_ExitRidingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinRidingRoomCopyWith<$Res> {
  factory _$$_JoinRidingRoomCopyWith(
          _$_JoinRidingRoom value, $Res Function(_$_JoinRidingRoom) then) =
      __$$_JoinRidingRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$_JoinRidingRoomCopyWithImpl<$Res>
    extends _$RidingActorEventCopyWithImpl<$Res, _$_JoinRidingRoom>
    implements _$$_JoinRidingRoomCopyWith<$Res> {
  __$$_JoinRidingRoomCopyWithImpl(
      _$_JoinRidingRoom _value, $Res Function(_$_JoinRidingRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$_JoinRidingRoom(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_JoinRidingRoom implements _JoinRidingRoom {
  const _$_JoinRidingRoom(this.ridingRoomId);

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
            other is _$_JoinRidingRoom &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRidingRoomCopyWith<_$_JoinRidingRoom> get copyWith =>
      __$$_JoinRidingRoomCopyWithImpl<_$_JoinRidingRoom>(this, _$identity);

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
  const factory _JoinRidingRoom(final int ridingRoomId) = _$_JoinRidingRoom;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$_JoinRidingRoomCopyWith<_$_JoinRidingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingActorState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  RidingRoom? get ridingRoom => throw _privateConstructorUsedError;

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
  $Res call({DefaultStatus status, RidingRoom? ridingRoom});

  $RidingRoomCopyWith<$Res>? get ridingRoom;
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
    Object? ridingRoom = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      ridingRoom: freezed == ridingRoom
          ? _value.ridingRoom
          : ridingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingRoomCopyWith<$Res>? get ridingRoom {
    if (_value.ridingRoom == null) {
      return null;
    }

    return $RidingRoomCopyWith<$Res>(_value.ridingRoom!, (value) {
      return _then(_value.copyWith(ridingRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RidingActorStateCopyWith<$Res>
    implements $RidingActorStateCopyWith<$Res> {
  factory _$$_RidingActorStateCopyWith(
          _$_RidingActorState value, $Res Function(_$_RidingActorState) then) =
      __$$_RidingActorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, RidingRoom? ridingRoom});

  @override
  $RidingRoomCopyWith<$Res>? get ridingRoom;
}

/// @nodoc
class __$$_RidingActorStateCopyWithImpl<$Res>
    extends _$RidingActorStateCopyWithImpl<$Res, _$_RidingActorState>
    implements _$$_RidingActorStateCopyWith<$Res> {
  __$$_RidingActorStateCopyWithImpl(
      _$_RidingActorState _value, $Res Function(_$_RidingActorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ridingRoom = freezed,
  }) {
    return _then(_$_RidingActorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      ridingRoom: freezed == ridingRoom
          ? _value.ridingRoom
          : ridingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
    ));
  }
}

/// @nodoc

class _$_RidingActorState implements _RidingActorState {
  const _$_RidingActorState({required this.status, this.ridingRoom});

  @override
  final DefaultStatus status;
  @override
  final RidingRoom? ridingRoom;

  @override
  String toString() {
    return 'RidingActorState(status: $status, ridingRoom: $ridingRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingActorState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ridingRoom, ridingRoom) ||
                other.ridingRoom == ridingRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, ridingRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingActorStateCopyWith<_$_RidingActorState> get copyWith =>
      __$$_RidingActorStateCopyWithImpl<_$_RidingActorState>(this, _$identity);
}

abstract class _RidingActorState implements RidingActorState {
  const factory _RidingActorState(
      {required final DefaultStatus status,
      final RidingRoom? ridingRoom}) = _$_RidingActorState;

  @override
  DefaultStatus get status;
  @override
  RidingRoom? get ridingRoom;
  @override
  @JsonKey(ignore: true)
  _$$_RidingActorStateCopyWith<_$_RidingActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
