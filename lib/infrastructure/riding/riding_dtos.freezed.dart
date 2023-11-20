// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RidingRoomDto _$RidingRoomDtoFromJson(Map<String, dynamic> json) {
  return _RidingRoomDto.fromJson(json);
}

/// @nodoc
mixin _$RidingRoomDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private')
  bool get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'me')
  RidingPlayerDto? get me => throw _privateConstructorUsedError;
  @JsonKey(name: 'players')
  List<RidingPlayerDto> get players => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_players')
  int get totalPlayers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RidingRoomDtoCopyWith<RidingRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingRoomDtoCopyWith<$Res> {
  factory $RidingRoomDtoCopyWith(
          RidingRoomDto value, $Res Function(RidingRoomDto) then) =
      _$RidingRoomDtoCopyWithImpl<$Res, RidingRoomDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'me') RidingPlayerDto? me,
      @JsonKey(name: 'players') List<RidingPlayerDto> players,
      @JsonKey(name: 'total_players') int totalPlayers});

  $RidingPlayerDtoCopyWith<$Res>? get me;
}

/// @nodoc
class _$RidingRoomDtoCopyWithImpl<$Res, $Val extends RidingRoomDto>
    implements $RidingRoomDtoCopyWith<$Res> {
  _$RidingRoomDtoCopyWithImpl(this._value, this._then);

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
    Object? me = freezed,
    Object? players = null,
    Object? totalPlayers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as RidingPlayerDto?,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<RidingPlayerDto>,
      totalPlayers: null == totalPlayers
          ? _value.totalPlayers
          : totalPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RidingPlayerDtoCopyWith<$Res>? get me {
    if (_value.me == null) {
      return null;
    }

    return $RidingPlayerDtoCopyWith<$Res>(_value.me!, (value) {
      return _then(_value.copyWith(me: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RidingRoomDtoCopyWith<$Res>
    implements $RidingRoomDtoCopyWith<$Res> {
  factory _$$_RidingRoomDtoCopyWith(
          _$_RidingRoomDto value, $Res Function(_$_RidingRoomDto) then) =
      __$$_RidingRoomDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'me') RidingPlayerDto? me,
      @JsonKey(name: 'players') List<RidingPlayerDto> players,
      @JsonKey(name: 'total_players') int totalPlayers});

  @override
  $RidingPlayerDtoCopyWith<$Res>? get me;
}

/// @nodoc
class __$$_RidingRoomDtoCopyWithImpl<$Res>
    extends _$RidingRoomDtoCopyWithImpl<$Res, _$_RidingRoomDto>
    implements _$$_RidingRoomDtoCopyWith<$Res> {
  __$$_RidingRoomDtoCopyWithImpl(
      _$_RidingRoomDto _value, $Res Function(_$_RidingRoomDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPrivate = null,
    Object? me = freezed,
    Object? players = null,
    Object? totalPlayers = null,
  }) {
    return _then(_$_RidingRoomDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as RidingPlayerDto?,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<RidingPlayerDto>,
      totalPlayers: null == totalPlayers
          ? _value.totalPlayers
          : totalPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RidingRoomDto extends _RidingRoomDto {
  const _$_RidingRoomDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'is_private') required this.isPrivate,
      @JsonKey(name: 'me') this.me,
      @JsonKey(name: 'players') required final List<RidingPlayerDto> players,
      @JsonKey(name: 'total_players') required this.totalPlayers})
      : _players = players,
        super._();

  factory _$_RidingRoomDto.fromJson(Map<String, dynamic> json) =>
      _$$_RidingRoomDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'is_private')
  final bool isPrivate;
  @override
  @JsonKey(name: 'me')
  final RidingPlayerDto? me;
  final List<RidingPlayerDto> _players;
  @override
  @JsonKey(name: 'players')
  List<RidingPlayerDto> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey(name: 'total_players')
  final int totalPlayers;

  @override
  String toString() {
    return 'RidingRoomDto(id: $id, name: $name, isPrivate: $isPrivate, me: $me, players: $players, totalPlayers: $totalPlayers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingRoomDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.me, me) || other.me == me) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.totalPlayers, totalPlayers) ||
                other.totalPlayers == totalPlayers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isPrivate, me,
      const DeepCollectionEquality().hash(_players), totalPlayers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingRoomDtoCopyWith<_$_RidingRoomDto> get copyWith =>
      __$$_RidingRoomDtoCopyWithImpl<_$_RidingRoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RidingRoomDtoToJson(
      this,
    );
  }
}

abstract class _RidingRoomDto extends RidingRoomDto {
  const factory _RidingRoomDto(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'is_private') required final bool isPrivate,
      @JsonKey(name: 'me') final RidingPlayerDto? me,
      @JsonKey(name: 'players') required final List<RidingPlayerDto> players,
      @JsonKey(name: 'total_players')
      required final int totalPlayers}) = _$_RidingRoomDto;
  const _RidingRoomDto._() : super._();

  factory _RidingRoomDto.fromJson(Map<String, dynamic> json) =
      _$_RidingRoomDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'is_private')
  bool get isPrivate;
  @override
  @JsonKey(name: 'me')
  RidingPlayerDto? get me;
  @override
  @JsonKey(name: 'players')
  List<RidingPlayerDto> get players;
  @override
  @JsonKey(name: 'total_players')
  int get totalPlayers;
  @override
  @JsonKey(ignore: true)
  _$$_RidingRoomDtoCopyWith<_$_RidingRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

RidingPlayerDto _$RidingPlayerDtoFromJson(Map<String, dynamic> json) {
  return _RidingPlayerDto.fromJson(json);
}

/// @nodoc
mixin _$RidingPlayerDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  int get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'room')
  int get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  UserLocationDto? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_updated_at')
  DateTime get locationUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_owner')
  bool get isOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RidingPlayerDtoCopyWith<RidingPlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingPlayerDtoCopyWith<$Res> {
  factory $RidingPlayerDtoCopyWith(
          RidingPlayerDto value, $Res Function(RidingPlayerDto) then) =
      _$RidingPlayerDtoCopyWithImpl<$Res, RidingPlayerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') int user,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'room') int room,
      @JsonKey(name: 'location') UserLocationDto? location,
      @JsonKey(name: 'location_updated_at') DateTime locationUpdatedAt,
      @JsonKey(name: 'profile_image') String profileImage,
      @JsonKey(name: 'is_owner') bool isOwner});

  $UserLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$RidingPlayerDtoCopyWithImpl<$Res, $Val extends RidingPlayerDto>
    implements $RidingPlayerDtoCopyWith<$Res> {
  _$RidingPlayerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? nickname = null,
    Object? room = null,
    Object? location = freezed,
    Object? locationUpdatedAt = null,
    Object? profileImage = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
      locationUpdatedAt: null == locationUpdatedAt
          ? _value.locationUpdatedAt
          : locationUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $UserLocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RidingPlayerDtoCopyWith<$Res>
    implements $RidingPlayerDtoCopyWith<$Res> {
  factory _$$_RidingPlayerDtoCopyWith(
          _$_RidingPlayerDto value, $Res Function(_$_RidingPlayerDto) then) =
      __$$_RidingPlayerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') int user,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'room') int room,
      @JsonKey(name: 'location') UserLocationDto? location,
      @JsonKey(name: 'location_updated_at') DateTime locationUpdatedAt,
      @JsonKey(name: 'profile_image') String profileImage,
      @JsonKey(name: 'is_owner') bool isOwner});

  @override
  $UserLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_RidingPlayerDtoCopyWithImpl<$Res>
    extends _$RidingPlayerDtoCopyWithImpl<$Res, _$_RidingPlayerDto>
    implements _$$_RidingPlayerDtoCopyWith<$Res> {
  __$$_RidingPlayerDtoCopyWithImpl(
      _$_RidingPlayerDto _value, $Res Function(_$_RidingPlayerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? nickname = null,
    Object? room = null,
    Object? location = freezed,
    Object? locationUpdatedAt = null,
    Object? profileImage = null,
    Object? isOwner = null,
  }) {
    return _then(_$_RidingPlayerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
      locationUpdatedAt: null == locationUpdatedAt
          ? _value.locationUpdatedAt
          : locationUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RidingPlayerDto extends _RidingPlayerDto {
  const _$_RidingPlayerDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'room') required this.room,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'location_updated_at') required this.locationUpdatedAt,
      @JsonKey(name: 'profile_image') required this.profileImage,
      @JsonKey(name: 'is_owner') required this.isOwner})
      : super._();

  factory _$_RidingPlayerDto.fromJson(Map<String, dynamic> json) =>
      _$$_RidingPlayerDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'user')
  final int user;
  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'room')
  final int room;
  @override
  @JsonKey(name: 'location')
  final UserLocationDto? location;
  @override
  @JsonKey(name: 'location_updated_at')
  final DateTime locationUpdatedAt;
  @override
  @JsonKey(name: 'profile_image')
  final String profileImage;
  @override
  @JsonKey(name: 'is_owner')
  final bool isOwner;

  @override
  String toString() {
    return 'RidingPlayerDto(id: $id, user: $user, nickname: $nickname, room: $room, location: $location, locationUpdatedAt: $locationUpdatedAt, profileImage: $profileImage, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingPlayerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationUpdatedAt, locationUpdatedAt) ||
                other.locationUpdatedAt == locationUpdatedAt) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, nickname, room,
      location, locationUpdatedAt, profileImage, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingPlayerDtoCopyWith<_$_RidingPlayerDto> get copyWith =>
      __$$_RidingPlayerDtoCopyWithImpl<_$_RidingPlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RidingPlayerDtoToJson(
      this,
    );
  }
}

abstract class _RidingPlayerDto extends RidingPlayerDto {
  const factory _RidingPlayerDto(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'user') required final int user,
          @JsonKey(name: 'nickname') required final String nickname,
          @JsonKey(name: 'room') required final int room,
          @JsonKey(name: 'location') final UserLocationDto? location,
          @JsonKey(name: 'location_updated_at')
          required final DateTime locationUpdatedAt,
          @JsonKey(name: 'profile_image') required final String profileImage,
          @JsonKey(name: 'is_owner') required final bool isOwner}) =
      _$_RidingPlayerDto;
  const _RidingPlayerDto._() : super._();

  factory _RidingPlayerDto.fromJson(Map<String, dynamic> json) =
      _$_RidingPlayerDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'user')
  int get user;
  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'room')
  int get room;
  @override
  @JsonKey(name: 'location')
  UserLocationDto? get location;
  @override
  @JsonKey(name: 'location_updated_at')
  DateTime get locationUpdatedAt;
  @override
  @JsonKey(name: 'profile_image')
  String get profileImage;
  @override
  @JsonKey(name: 'is_owner')
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$_RidingPlayerDtoCopyWith<_$_RidingPlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateRidingRoomNameRequestDto _$UpdateRidingRoomNameRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateRidingRoomNameRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateRidingRoomNameRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRidingRoomNameRequestDtoCopyWith<UpdateRidingRoomNameRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRidingRoomNameRequestDtoCopyWith<$Res> {
  factory $UpdateRidingRoomNameRequestDtoCopyWith(
          UpdateRidingRoomNameRequestDto value,
          $Res Function(UpdateRidingRoomNameRequestDto) then) =
      _$UpdateRidingRoomNameRequestDtoCopyWithImpl<$Res,
          UpdateRidingRoomNameRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$UpdateRidingRoomNameRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateRidingRoomNameRequestDto>
    implements $UpdateRidingRoomNameRequestDtoCopyWith<$Res> {
  _$UpdateRidingRoomNameRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateRidingRoomNameRequestDtoCopyWith<$Res>
    implements $UpdateRidingRoomNameRequestDtoCopyWith<$Res> {
  factory _$$_UpdateRidingRoomNameRequestDtoCopyWith(
          _$_UpdateRidingRoomNameRequestDto value,
          $Res Function(_$_UpdateRidingRoomNameRequestDto) then) =
      __$$_UpdateRidingRoomNameRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_UpdateRidingRoomNameRequestDtoCopyWithImpl<$Res>
    extends _$UpdateRidingRoomNameRequestDtoCopyWithImpl<$Res,
        _$_UpdateRidingRoomNameRequestDto>
    implements _$$_UpdateRidingRoomNameRequestDtoCopyWith<$Res> {
  __$$_UpdateRidingRoomNameRequestDtoCopyWithImpl(
      _$_UpdateRidingRoomNameRequestDto _value,
      $Res Function(_$_UpdateRidingRoomNameRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_UpdateRidingRoomNameRequestDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateRidingRoomNameRequestDto
    extends _UpdateRidingRoomNameRequestDto {
  const _$_UpdateRidingRoomNameRequestDto(
      {@JsonKey(name: 'name') required this.name})
      : super._();

  factory _$_UpdateRidingRoomNameRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateRidingRoomNameRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'UpdateRidingRoomNameRequestDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRidingRoomNameRequestDto &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRidingRoomNameRequestDtoCopyWith<_$_UpdateRidingRoomNameRequestDto>
      get copyWith => __$$_UpdateRidingRoomNameRequestDtoCopyWithImpl<
          _$_UpdateRidingRoomNameRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateRidingRoomNameRequestDtoToJson(
      this,
    );
  }
}

abstract class _UpdateRidingRoomNameRequestDto
    extends UpdateRidingRoomNameRequestDto {
  const factory _UpdateRidingRoomNameRequestDto(
          {@JsonKey(name: 'name') required final String name}) =
      _$_UpdateRidingRoomNameRequestDto;
  const _UpdateRidingRoomNameRequestDto._() : super._();

  factory _UpdateRidingRoomNameRequestDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateRidingRoomNameRequestDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateRidingRoomNameRequestDtoCopyWith<_$_UpdateRidingRoomNameRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}
