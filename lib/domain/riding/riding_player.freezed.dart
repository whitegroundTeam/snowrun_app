// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingPlayer {
  IntVO get id => throw _privateConstructorUsedError;
  IntVO get userId => throw _privateConstructorUsedError;
  StringVO get nickname => throw _privateConstructorUsedError;
  IntVO get roomId => throw _privateConstructorUsedError;
  UserLocation? get location => throw _privateConstructorUsedError;
  DateTimeVO get locationUpdatedAt => throw _privateConstructorUsedError;
  StringVO get profileImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingPlayerCopyWith<RidingPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingPlayerCopyWith<$Res> {
  factory $RidingPlayerCopyWith(
          RidingPlayer value, $Res Function(RidingPlayer) then) =
      _$RidingPlayerCopyWithImpl<$Res, RidingPlayer>;
  @useResult
  $Res call(
      {IntVO id,
      IntVO userId,
      StringVO nickname,
      IntVO roomId,
      UserLocation? location,
      DateTimeVO locationUpdatedAt,
      StringVO profileImage});

  $UserLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$RidingPlayerCopyWithImpl<$Res, $Val extends RidingPlayer>
    implements $RidingPlayerCopyWith<$Res> {
  _$RidingPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nickname = null,
    Object? roomId = null,
    Object? location = freezed,
    Object? locationUpdatedAt = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IntVO,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as IntVO,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as StringVO,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as IntVO,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation?,
      locationUpdatedAt: null == locationUpdatedAt
          ? _value.locationUpdatedAt
          : locationUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $UserLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RidingPlayerCopyWith<$Res>
    implements $RidingPlayerCopyWith<$Res> {
  factory _$$_RidingPlayerCopyWith(
          _$_RidingPlayer value, $Res Function(_$_RidingPlayer) then) =
      __$$_RidingPlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IntVO id,
      IntVO userId,
      StringVO nickname,
      IntVO roomId,
      UserLocation? location,
      DateTimeVO locationUpdatedAt,
      StringVO profileImage});

  @override
  $UserLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_RidingPlayerCopyWithImpl<$Res>
    extends _$RidingPlayerCopyWithImpl<$Res, _$_RidingPlayer>
    implements _$$_RidingPlayerCopyWith<$Res> {
  __$$_RidingPlayerCopyWithImpl(
      _$_RidingPlayer _value, $Res Function(_$_RidingPlayer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nickname = null,
    Object? roomId = null,
    Object? location = freezed,
    Object? locationUpdatedAt = null,
    Object? profileImage = null,
  }) {
    return _then(_$_RidingPlayer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IntVO,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as IntVO,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as StringVO,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as IntVO,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation?,
      locationUpdatedAt: null == locationUpdatedAt
          ? _value.locationUpdatedAt
          : locationUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_RidingPlayer extends _RidingPlayer {
  const _$_RidingPlayer(
      {required this.id,
      required this.userId,
      required this.nickname,
      required this.roomId,
      required this.location,
      required this.locationUpdatedAt,
      required this.profileImage})
      : super._();

  @override
  final IntVO id;
  @override
  final IntVO userId;
  @override
  final StringVO nickname;
  @override
  final IntVO roomId;
  @override
  final UserLocation? location;
  @override
  final DateTimeVO locationUpdatedAt;
  @override
  final StringVO profileImage;

  @override
  String toString() {
    return 'RidingPlayer(id: $id, userId: $userId, nickname: $nickname, roomId: $roomId, location: $location, locationUpdatedAt: $locationUpdatedAt, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingPlayer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationUpdatedAt, locationUpdatedAt) ||
                other.locationUpdatedAt == locationUpdatedAt) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, nickname, roomId,
      location, locationUpdatedAt, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingPlayerCopyWith<_$_RidingPlayer> get copyWith =>
      __$$_RidingPlayerCopyWithImpl<_$_RidingPlayer>(this, _$identity);
}

abstract class _RidingPlayer extends RidingPlayer {
  const factory _RidingPlayer(
      {required final IntVO id,
      required final IntVO userId,
      required final StringVO nickname,
      required final IntVO roomId,
      required final UserLocation? location,
      required final DateTimeVO locationUpdatedAt,
      required final StringVO profileImage}) = _$_RidingPlayer;
  const _RidingPlayer._() : super._();

  @override
  IntVO get id;
  @override
  IntVO get userId;
  @override
  StringVO get nickname;
  @override
  IntVO get roomId;
  @override
  UserLocation? get location;
  @override
  DateTimeVO get locationUpdatedAt;
  @override
  StringVO get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_RidingPlayerCopyWith<_$_RidingPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
