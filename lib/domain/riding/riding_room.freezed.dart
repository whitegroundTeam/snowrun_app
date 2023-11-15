// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingRoom {
  IntVO get id => throw _privateConstructorUsedError;
  StringVO get name => throw _privateConstructorUsedError;
  BooleanVO get isPrivate => throw _privateConstructorUsedError;
  ListVO<RidingPlayer> get players => throw _privateConstructorUsedError;
  IntVO get totalPlayersCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingRoomCopyWith<RidingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingRoomCopyWith<$Res> {
  factory $RidingRoomCopyWith(
          RidingRoom value, $Res Function(RidingRoom) then) =
      _$RidingRoomCopyWithImpl<$Res, RidingRoom>;
  @useResult
  $Res call(
      {IntVO id,
      StringVO name,
      BooleanVO isPrivate,
      ListVO<RidingPlayer> players,
      IntVO totalPlayersCount});
}

/// @nodoc
class _$RidingRoomCopyWithImpl<$Res, $Val extends RidingRoom>
    implements $RidingRoomCopyWith<$Res> {
  _$RidingRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPrivate = null,
    Object? players = null,
    Object? totalPlayersCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IntVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as ListVO<RidingPlayer>,
      totalPlayersCount: null == totalPlayersCount
          ? _value.totalPlayersCount
          : totalPlayersCount // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RidingRoomCopyWith<$Res>
    implements $RidingRoomCopyWith<$Res> {
  factory _$$_RidingRoomCopyWith(
          _$_RidingRoom value, $Res Function(_$_RidingRoom) then) =
      __$$_RidingRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IntVO id,
      StringVO name,
      BooleanVO isPrivate,
      ListVO<RidingPlayer> players,
      IntVO totalPlayersCount});
}

/// @nodoc
class __$$_RidingRoomCopyWithImpl<$Res>
    extends _$RidingRoomCopyWithImpl<$Res, _$_RidingRoom>
    implements _$$_RidingRoomCopyWith<$Res> {
  __$$_RidingRoomCopyWithImpl(
      _$_RidingRoom _value, $Res Function(_$_RidingRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPrivate = null,
    Object? players = null,
    Object? totalPlayersCount = null,
  }) {
    return _then(_$_RidingRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IntVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as ListVO<RidingPlayer>,
      totalPlayersCount: null == totalPlayersCount
          ? _value.totalPlayersCount
          : totalPlayersCount // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ));
  }
}

/// @nodoc

class _$_RidingRoom extends _RidingRoom {
  const _$_RidingRoom(
      {required this.id,
      required this.name,
      required this.isPrivate,
      required this.players,
      required this.totalPlayersCount})
      : super._();

  @override
  final IntVO id;
  @override
  final StringVO name;
  @override
  final BooleanVO isPrivate;
  @override
  final ListVO<RidingPlayer> players;
  @override
  final IntVO totalPlayersCount;

  @override
  String toString() {
    return 'RidingRoom(id: $id, name: $name, isPrivate: $isPrivate, players: $players, totalPlayersCount: $totalPlayersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.totalPlayersCount, totalPlayersCount) ||
                other.totalPlayersCount == totalPlayersCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, isPrivate, players, totalPlayersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingRoomCopyWith<_$_RidingRoom> get copyWith =>
      __$$_RidingRoomCopyWithImpl<_$_RidingRoom>(this, _$identity);
}

abstract class _RidingRoom extends RidingRoom {
  const factory _RidingRoom(
      {required final IntVO id,
      required final StringVO name,
      required final BooleanVO isPrivate,
      required final ListVO<RidingPlayer> players,
      required final IntVO totalPlayersCount}) = _$_RidingRoom;
  const _RidingRoom._() : super._();

  @override
  IntVO get id;
  @override
  StringVO get name;
  @override
  BooleanVO get isPrivate;
  @override
  ListVO<RidingPlayer> get players;
  @override
  IntVO get totalPlayersCount;
  @override
  @JsonKey(ignore: true)
  _$$_RidingRoomCopyWith<_$_RidingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
