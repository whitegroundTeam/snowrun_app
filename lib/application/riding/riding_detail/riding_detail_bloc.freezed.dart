// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ridingRoomId) getRidingRoom,
    required TResult Function(RidingRoom ridingRoom) updateRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ridingRoomId)? getRidingRoom,
    TResult? Function(RidingRoom ridingRoom)? updateRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ridingRoomId)? getRidingRoom,
    TResult Function(RidingRoom ridingRoom)? updateRidingRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRidingRoom value) getRidingRoom,
    required TResult Function(_UpdateRidingRoom value) updateRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRidingRoom value)? getRidingRoom,
    TResult? Function(_UpdateRidingRoom value)? updateRidingRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRidingRoom value)? getRidingRoom,
    TResult Function(_UpdateRidingRoom value)? updateRidingRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingDetailEventCopyWith<$Res> {
  factory $RidingDetailEventCopyWith(
          RidingDetailEvent value, $Res Function(RidingDetailEvent) then) =
      _$RidingDetailEventCopyWithImpl<$Res, RidingDetailEvent>;
}

/// @nodoc
class _$RidingDetailEventCopyWithImpl<$Res, $Val extends RidingDetailEvent>
    implements $RidingDetailEventCopyWith<$Res> {
  _$RidingDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRidingRoomImplCopyWith<$Res> {
  factory _$$GetRidingRoomImplCopyWith(
          _$GetRidingRoomImpl value, $Res Function(_$GetRidingRoomImpl) then) =
      __$$GetRidingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ridingRoomId});
}

/// @nodoc
class __$$GetRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingDetailEventCopyWithImpl<$Res, _$GetRidingRoomImpl>
    implements _$$GetRidingRoomImplCopyWith<$Res> {
  __$$GetRidingRoomImplCopyWithImpl(
      _$GetRidingRoomImpl _value, $Res Function(_$GetRidingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
  }) {
    return _then(_$GetRidingRoomImpl(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetRidingRoomImpl implements _GetRidingRoom {
  const _$GetRidingRoomImpl(this.ridingRoomId);

  @override
  final int ridingRoomId;

  @override
  String toString() {
    return 'RidingDetailEvent.getRidingRoom(ridingRoomId: $ridingRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRidingRoomImpl &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRidingRoomImplCopyWith<_$GetRidingRoomImpl> get copyWith =>
      __$$GetRidingRoomImplCopyWithImpl<_$GetRidingRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ridingRoomId) getRidingRoom,
    required TResult Function(RidingRoom ridingRoom) updateRidingRoom,
  }) {
    return getRidingRoom(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ridingRoomId)? getRidingRoom,
    TResult? Function(RidingRoom ridingRoom)? updateRidingRoom,
  }) {
    return getRidingRoom?.call(ridingRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ridingRoomId)? getRidingRoom,
    TResult Function(RidingRoom ridingRoom)? updateRidingRoom,
    required TResult orElse(),
  }) {
    if (getRidingRoom != null) {
      return getRidingRoom(ridingRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRidingRoom value) getRidingRoom,
    required TResult Function(_UpdateRidingRoom value) updateRidingRoom,
  }) {
    return getRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRidingRoom value)? getRidingRoom,
    TResult? Function(_UpdateRidingRoom value)? updateRidingRoom,
  }) {
    return getRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRidingRoom value)? getRidingRoom,
    TResult Function(_UpdateRidingRoom value)? updateRidingRoom,
    required TResult orElse(),
  }) {
    if (getRidingRoom != null) {
      return getRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _GetRidingRoom implements RidingDetailEvent {
  const factory _GetRidingRoom(final int ridingRoomId) = _$GetRidingRoomImpl;

  int get ridingRoomId;
  @JsonKey(ignore: true)
  _$$GetRidingRoomImplCopyWith<_$GetRidingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRidingRoomImplCopyWith<$Res> {
  factory _$$UpdateRidingRoomImplCopyWith(_$UpdateRidingRoomImpl value,
          $Res Function(_$UpdateRidingRoomImpl) then) =
      __$$UpdateRidingRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RidingRoom ridingRoom});

  $RidingRoomCopyWith<$Res> get ridingRoom;
}

/// @nodoc
class __$$UpdateRidingRoomImplCopyWithImpl<$Res>
    extends _$RidingDetailEventCopyWithImpl<$Res, _$UpdateRidingRoomImpl>
    implements _$$UpdateRidingRoomImplCopyWith<$Res> {
  __$$UpdateRidingRoomImplCopyWithImpl(_$UpdateRidingRoomImpl _value,
      $Res Function(_$UpdateRidingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoom = null,
  }) {
    return _then(_$UpdateRidingRoomImpl(
      null == ridingRoom
          ? _value.ridingRoom
          : ridingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingRoomCopyWith<$Res> get ridingRoom {
    return $RidingRoomCopyWith<$Res>(_value.ridingRoom, (value) {
      return _then(_value.copyWith(ridingRoom: value));
    });
  }
}

/// @nodoc

class _$UpdateRidingRoomImpl implements _UpdateRidingRoom {
  const _$UpdateRidingRoomImpl(this.ridingRoom);

  @override
  final RidingRoom ridingRoom;

  @override
  String toString() {
    return 'RidingDetailEvent.updateRidingRoom(ridingRoom: $ridingRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRidingRoomImpl &&
            (identical(other.ridingRoom, ridingRoom) ||
                other.ridingRoom == ridingRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRidingRoomImplCopyWith<_$UpdateRidingRoomImpl> get copyWith =>
      __$$UpdateRidingRoomImplCopyWithImpl<_$UpdateRidingRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ridingRoomId) getRidingRoom,
    required TResult Function(RidingRoom ridingRoom) updateRidingRoom,
  }) {
    return updateRidingRoom(ridingRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ridingRoomId)? getRidingRoom,
    TResult? Function(RidingRoom ridingRoom)? updateRidingRoom,
  }) {
    return updateRidingRoom?.call(ridingRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ridingRoomId)? getRidingRoom,
    TResult Function(RidingRoom ridingRoom)? updateRidingRoom,
    required TResult orElse(),
  }) {
    if (updateRidingRoom != null) {
      return updateRidingRoom(ridingRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRidingRoom value) getRidingRoom,
    required TResult Function(_UpdateRidingRoom value) updateRidingRoom,
  }) {
    return updateRidingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRidingRoom value)? getRidingRoom,
    TResult? Function(_UpdateRidingRoom value)? updateRidingRoom,
  }) {
    return updateRidingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRidingRoom value)? getRidingRoom,
    TResult Function(_UpdateRidingRoom value)? updateRidingRoom,
    required TResult orElse(),
  }) {
    if (updateRidingRoom != null) {
      return updateRidingRoom(this);
    }
    return orElse();
  }
}

abstract class _UpdateRidingRoom implements RidingDetailEvent {
  const factory _UpdateRidingRoom(final RidingRoom ridingRoom) =
      _$UpdateRidingRoomImpl;

  RidingRoom get ridingRoom;
  @JsonKey(ignore: true)
  _$$UpdateRidingRoomImplCopyWith<_$UpdateRidingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingDetailState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  RidingRoom? get ridingRoom => throw _privateConstructorUsedError;
  RidingPlayer? get selectedRidingPlayer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingDetailStateCopyWith<RidingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingDetailStateCopyWith<$Res> {
  factory $RidingDetailStateCopyWith(
          RidingDetailState value, $Res Function(RidingDetailState) then) =
      _$RidingDetailStateCopyWithImpl<$Res, RidingDetailState>;
  @useResult
  $Res call(
      {DefaultStatus status,
      RidingRoom? ridingRoom,
      RidingPlayer? selectedRidingPlayer});

  $RidingRoomCopyWith<$Res>? get ridingRoom;
  $RidingPlayerCopyWith<$Res>? get selectedRidingPlayer;
}

/// @nodoc
class _$RidingDetailStateCopyWithImpl<$Res, $Val extends RidingDetailState>
    implements $RidingDetailStateCopyWith<$Res> {
  _$RidingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ridingRoom = freezed,
    Object? selectedRidingPlayer = freezed,
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
      selectedRidingPlayer: freezed == selectedRidingPlayer
          ? _value.selectedRidingPlayer
          : selectedRidingPlayer // ignore: cast_nullable_to_non_nullable
              as RidingPlayer?,
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

  @override
  @pragma('vm:prefer-inline')
  $RidingPlayerCopyWith<$Res>? get selectedRidingPlayer {
    if (_value.selectedRidingPlayer == null) {
      return null;
    }

    return $RidingPlayerCopyWith<$Res>(_value.selectedRidingPlayer!, (value) {
      return _then(_value.copyWith(selectedRidingPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RidingDetailStateImplCopyWith<$Res>
    implements $RidingDetailStateCopyWith<$Res> {
  factory _$$RidingDetailStateImplCopyWith(_$RidingDetailStateImpl value,
          $Res Function(_$RidingDetailStateImpl) then) =
      __$$RidingDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DefaultStatus status,
      RidingRoom? ridingRoom,
      RidingPlayer? selectedRidingPlayer});

  @override
  $RidingRoomCopyWith<$Res>? get ridingRoom;
  @override
  $RidingPlayerCopyWith<$Res>? get selectedRidingPlayer;
}

/// @nodoc
class __$$RidingDetailStateImplCopyWithImpl<$Res>
    extends _$RidingDetailStateCopyWithImpl<$Res, _$RidingDetailStateImpl>
    implements _$$RidingDetailStateImplCopyWith<$Res> {
  __$$RidingDetailStateImplCopyWithImpl(_$RidingDetailStateImpl _value,
      $Res Function(_$RidingDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ridingRoom = freezed,
    Object? selectedRidingPlayer = freezed,
  }) {
    return _then(_$RidingDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      ridingRoom: freezed == ridingRoom
          ? _value.ridingRoom
          : ridingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom?,
      selectedRidingPlayer: freezed == selectedRidingPlayer
          ? _value.selectedRidingPlayer
          : selectedRidingPlayer // ignore: cast_nullable_to_non_nullable
              as RidingPlayer?,
    ));
  }
}

/// @nodoc

class _$RidingDetailStateImpl implements _RidingDetailState {
  const _$RidingDetailStateImpl(
      {required this.status, this.ridingRoom, this.selectedRidingPlayer});

  @override
  final DefaultStatus status;
  @override
  final RidingRoom? ridingRoom;
  @override
  final RidingPlayer? selectedRidingPlayer;

  @override
  String toString() {
    return 'RidingDetailState(status: $status, ridingRoom: $ridingRoom, selectedRidingPlayer: $selectedRidingPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidingDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ridingRoom, ridingRoom) ||
                other.ridingRoom == ridingRoom) &&
            (identical(other.selectedRidingPlayer, selectedRidingPlayer) ||
                other.selectedRidingPlayer == selectedRidingPlayer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, ridingRoom, selectedRidingPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidingDetailStateImplCopyWith<_$RidingDetailStateImpl> get copyWith =>
      __$$RidingDetailStateImplCopyWithImpl<_$RidingDetailStateImpl>(
          this, _$identity);
}

abstract class _RidingDetailState implements RidingDetailState {
  const factory _RidingDetailState(
      {required final DefaultStatus status,
      final RidingRoom? ridingRoom,
      final RidingPlayer? selectedRidingPlayer}) = _$RidingDetailStateImpl;

  @override
  DefaultStatus get status;
  @override
  RidingRoom? get ridingRoom;
  @override
  RidingPlayer? get selectedRidingPlayer;
  @override
  @JsonKey(ignore: true)
  _$$RidingDetailStateImplCopyWith<_$RidingDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
