// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingFormEvent {
  int get ridingRoomId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ridingRoomId, String name)
        updateRidingRoomName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ridingRoomId, String name)? updateRidingRoomName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ridingRoomId, String name)? updateRidingRoomName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateRidingRoomName value) updateRidingRoomName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateRidingRoomName value)? updateRidingRoomName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateRidingRoomName value)? updateRidingRoomName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingFormEventCopyWith<RidingFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingFormEventCopyWith<$Res> {
  factory $RidingFormEventCopyWith(
          RidingFormEvent value, $Res Function(RidingFormEvent) then) =
      _$RidingFormEventCopyWithImpl<$Res, RidingFormEvent>;
  @useResult
  $Res call({int ridingRoomId, String name});
}

/// @nodoc
class _$RidingFormEventCopyWithImpl<$Res, $Val extends RidingFormEvent>
    implements $RidingFormEventCopyWith<$Res> {
  _$RidingFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      ridingRoomId: null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateRidingRoomNameCopyWith<$Res>
    implements $RidingFormEventCopyWith<$Res> {
  factory _$$_UpdateRidingRoomNameCopyWith(_$_UpdateRidingRoomName value,
          $Res Function(_$_UpdateRidingRoomName) then) =
      __$$_UpdateRidingRoomNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ridingRoomId, String name});
}

/// @nodoc
class __$$_UpdateRidingRoomNameCopyWithImpl<$Res>
    extends _$RidingFormEventCopyWithImpl<$Res, _$_UpdateRidingRoomName>
    implements _$$_UpdateRidingRoomNameCopyWith<$Res> {
  __$$_UpdateRidingRoomNameCopyWithImpl(_$_UpdateRidingRoomName _value,
      $Res Function(_$_UpdateRidingRoomName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRoomId = null,
    Object? name = null,
  }) {
    return _then(_$_UpdateRidingRoomName(
      null == ridingRoomId
          ? _value.ridingRoomId
          : ridingRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateRidingRoomName implements _UpdateRidingRoomName {
  const _$_UpdateRidingRoomName(this.ridingRoomId, this.name);

  @override
  final int ridingRoomId;
  @override
  final String name;

  @override
  String toString() {
    return 'RidingFormEvent.updateRidingRoomName(ridingRoomId: $ridingRoomId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRidingRoomName &&
            (identical(other.ridingRoomId, ridingRoomId) ||
                other.ridingRoomId == ridingRoomId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRoomId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRidingRoomNameCopyWith<_$_UpdateRidingRoomName> get copyWith =>
      __$$_UpdateRidingRoomNameCopyWithImpl<_$_UpdateRidingRoomName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ridingRoomId, String name)
        updateRidingRoomName,
  }) {
    return updateRidingRoomName(ridingRoomId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ridingRoomId, String name)? updateRidingRoomName,
  }) {
    return updateRidingRoomName?.call(ridingRoomId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ridingRoomId, String name)? updateRidingRoomName,
    required TResult orElse(),
  }) {
    if (updateRidingRoomName != null) {
      return updateRidingRoomName(ridingRoomId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateRidingRoomName value) updateRidingRoomName,
  }) {
    return updateRidingRoomName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateRidingRoomName value)? updateRidingRoomName,
  }) {
    return updateRidingRoomName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateRidingRoomName value)? updateRidingRoomName,
    required TResult orElse(),
  }) {
    if (updateRidingRoomName != null) {
      return updateRidingRoomName(this);
    }
    return orElse();
  }
}

abstract class _UpdateRidingRoomName implements RidingFormEvent {
  const factory _UpdateRidingRoomName(
      final int ridingRoomId, final String name) = _$_UpdateRidingRoomName;

  @override
  int get ridingRoomId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateRidingRoomNameCopyWith<_$_UpdateRidingRoomName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingFormState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  RidingRoom get updatedRidingRoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingFormStateCopyWith<RidingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingFormStateCopyWith<$Res> {
  factory $RidingFormStateCopyWith(
          RidingFormState value, $Res Function(RidingFormState) then) =
      _$RidingFormStateCopyWithImpl<$Res, RidingFormState>;
  @useResult
  $Res call({DefaultStatus status, RidingRoom updatedRidingRoom});

  $RidingRoomCopyWith<$Res> get updatedRidingRoom;
}

/// @nodoc
class _$RidingFormStateCopyWithImpl<$Res, $Val extends RidingFormState>
    implements $RidingFormStateCopyWith<$Res> {
  _$RidingFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updatedRidingRoom = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      updatedRidingRoom: null == updatedRidingRoom
          ? _value.updatedRidingRoom
          : updatedRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingRoomCopyWith<$Res> get updatedRidingRoom {
    return $RidingRoomCopyWith<$Res>(_value.updatedRidingRoom, (value) {
      return _then(_value.copyWith(updatedRidingRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RidingFormStateCopyWith<$Res>
    implements $RidingFormStateCopyWith<$Res> {
  factory _$$_RidingFormStateCopyWith(
          _$_RidingFormState value, $Res Function(_$_RidingFormState) then) =
      __$$_RidingFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, RidingRoom updatedRidingRoom});

  @override
  $RidingRoomCopyWith<$Res> get updatedRidingRoom;
}

/// @nodoc
class __$$_RidingFormStateCopyWithImpl<$Res>
    extends _$RidingFormStateCopyWithImpl<$Res, _$_RidingFormState>
    implements _$$_RidingFormStateCopyWith<$Res> {
  __$$_RidingFormStateCopyWithImpl(
      _$_RidingFormState _value, $Res Function(_$_RidingFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updatedRidingRoom = null,
  }) {
    return _then(_$_RidingFormState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      updatedRidingRoom: null == updatedRidingRoom
          ? _value.updatedRidingRoom
          : updatedRidingRoom // ignore: cast_nullable_to_non_nullable
              as RidingRoom,
    ));
  }
}

/// @nodoc

class _$_RidingFormState implements _RidingFormState {
  const _$_RidingFormState(
      {required this.status, required this.updatedRidingRoom});

  @override
  final DefaultStatus status;
  @override
  final RidingRoom updatedRidingRoom;

  @override
  String toString() {
    return 'RidingFormState(status: $status, updatedRidingRoom: $updatedRidingRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingFormState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedRidingRoom, updatedRidingRoom) ||
                other.updatedRidingRoom == updatedRidingRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, updatedRidingRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingFormStateCopyWith<_$_RidingFormState> get copyWith =>
      __$$_RidingFormStateCopyWithImpl<_$_RidingFormState>(this, _$identity);
}

abstract class _RidingFormState implements RidingFormState {
  const factory _RidingFormState(
      {required final DefaultStatus status,
      required final RidingRoom updatedRidingRoom}) = _$_RidingFormState;

  @override
  DefaultStatus get status;
  @override
  RidingRoom get updatedRidingRoom;
  @override
  @JsonKey(ignore: true)
  _$$_RidingFormStateCopyWith<_$_RidingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
