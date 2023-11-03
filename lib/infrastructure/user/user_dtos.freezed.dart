// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  UserLocationDto? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'location') UserLocationDto? location,
      @JsonKey(name: 'image') String? profileImage});

  $UserLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? location = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'location') UserLocationDto? location,
      @JsonKey(name: 'image') String? profileImage});

  @override
  $UserLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? location = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_UserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'image') this.profileImage})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'location')
  final UserLocationDto? location;
  @override
  @JsonKey(name: 'image')
  final String? profileImage;

  @override
  String toString() {
    return 'UserDto(id: $id, nickname: $nickname, location: $location, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, location, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'nickname') required final String nickname,
      @JsonKey(name: 'location') final UserLocationDto? location,
      @JsonKey(name: 'image') final String? profileImage}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'location')
  UserLocationDto? get location;
  @override
  @JsonKey(name: 'image')
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLocationDto _$UserLocationDtoFromJson(Map<String, dynamic> json) {
  return _UserLocationDto.fromJson(json);
}

/// @nodoc
mixin _$UserLocationDto {
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationDtoCopyWith<UserLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationDtoCopyWith<$Res> {
  factory $UserLocationDtoCopyWith(
          UserLocationDto value, $Res Function(UserLocationDto) then) =
      _$UserLocationDtoCopyWithImpl<$Res, UserLocationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lng') double lng});
}

/// @nodoc
class _$UserLocationDtoCopyWithImpl<$Res, $Val extends UserLocationDto>
    implements $UserLocationDtoCopyWith<$Res> {
  _$UserLocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLocationDtoCopyWith<$Res>
    implements $UserLocationDtoCopyWith<$Res> {
  factory _$$_UserLocationDtoCopyWith(
          _$_UserLocationDto value, $Res Function(_$_UserLocationDto) then) =
      __$$_UserLocationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lng') double lng});
}

/// @nodoc
class __$$_UserLocationDtoCopyWithImpl<$Res>
    extends _$UserLocationDtoCopyWithImpl<$Res, _$_UserLocationDto>
    implements _$$_UserLocationDtoCopyWith<$Res> {
  __$$_UserLocationDtoCopyWithImpl(
      _$_UserLocationDto _value, $Res Function(_$_UserLocationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_UserLocationDto(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLocationDto extends _UserLocationDto {
  const _$_UserLocationDto(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lng') required this.lng})
      : super._();

  factory _$_UserLocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserLocationDtoFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lng')
  final double lng;

  @override
  String toString() {
    return 'UserLocationDto(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLocationDto &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLocationDtoCopyWith<_$_UserLocationDto> get copyWith =>
      __$$_UserLocationDtoCopyWithImpl<_$_UserLocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLocationDtoToJson(
      this,
    );
  }
}

abstract class _UserLocationDto extends UserLocationDto {
  const factory _UserLocationDto(
      {@JsonKey(name: 'lat') required final double lat,
      @JsonKey(name: 'lng') required final double lng}) = _$_UserLocationDto;
  const _UserLocationDto._() : super._();

  factory _UserLocationDto.fromJson(Map<String, dynamic> json) =
      _$_UserLocationDto.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lng')
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationDtoCopyWith<_$_UserLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SnowBallProfileImageDto _$SnowBallProfileImageDtoFromJson(
    Map<String, dynamic> json) {
  return _SnowBallProfileImageDto.fromJson(json);
}

/// @nodoc
mixin _$SnowBallProfileImageDto {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnowBallProfileImageDtoCopyWith<SnowBallProfileImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowBallProfileImageDtoCopyWith<$Res> {
  factory $SnowBallProfileImageDtoCopyWith(SnowBallProfileImageDto value,
          $Res Function(SnowBallProfileImageDto) then) =
      _$SnowBallProfileImageDtoCopyWithImpl<$Res, SnowBallProfileImageDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$SnowBallProfileImageDtoCopyWithImpl<$Res,
        $Val extends SnowBallProfileImageDto>
    implements $SnowBallProfileImageDtoCopyWith<$Res> {
  _$SnowBallProfileImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnowBallProfileImageDtoCopyWith<$Res>
    implements $SnowBallProfileImageDtoCopyWith<$Res> {
  factory _$$_SnowBallProfileImageDtoCopyWith(_$_SnowBallProfileImageDto value,
          $Res Function(_$_SnowBallProfileImageDto) then) =
      __$$_SnowBallProfileImageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$_SnowBallProfileImageDtoCopyWithImpl<$Res>
    extends _$SnowBallProfileImageDtoCopyWithImpl<$Res,
        _$_SnowBallProfileImageDto>
    implements _$$_SnowBallProfileImageDtoCopyWith<$Res> {
  __$$_SnowBallProfileImageDtoCopyWithImpl(_$_SnowBallProfileImageDto _value,
      $Res Function(_$_SnowBallProfileImageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_$_SnowBallProfileImageDto(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SnowBallProfileImageDto extends _SnowBallProfileImageDto {
  const _$_SnowBallProfileImageDto(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'url') required this.url})
      : super._();

  factory _$_SnowBallProfileImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_SnowBallProfileImageDtoFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'SnowBallProfileImageDto(key: $key, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnowBallProfileImageDto &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnowBallProfileImageDtoCopyWith<_$_SnowBallProfileImageDto>
      get copyWith =>
          __$$_SnowBallProfileImageDtoCopyWithImpl<_$_SnowBallProfileImageDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnowBallProfileImageDtoToJson(
      this,
    );
  }
}

abstract class _SnowBallProfileImageDto extends SnowBallProfileImageDto {
  const factory _SnowBallProfileImageDto(
          {@JsonKey(name: 'key') required final String key,
          @JsonKey(name: 'url') required final String url}) =
      _$_SnowBallProfileImageDto;
  const _SnowBallProfileImageDto._() : super._();

  factory _SnowBallProfileImageDto.fromJson(Map<String, dynamic> json) =
      _$_SnowBallProfileImageDto.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_SnowBallProfileImageDtoCopyWith<_$_SnowBallProfileImageDto>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateProfileByTypeRequestDto _$UpdateProfileByTypeRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileByTypeRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileByTypeRequestDto {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileByTypeRequestDtoCopyWith<UpdateProfileByTypeRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileByTypeRequestDtoCopyWith<$Res> {
  factory $UpdateProfileByTypeRequestDtoCopyWith(
          UpdateProfileByTypeRequestDto value,
          $Res Function(UpdateProfileByTypeRequestDto) then) =
      _$UpdateProfileByTypeRequestDtoCopyWithImpl<$Res,
          UpdateProfileByTypeRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') String type});
}

/// @nodoc
class _$UpdateProfileByTypeRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateProfileByTypeRequestDto>
    implements $UpdateProfileByTypeRequestDtoCopyWith<$Res> {
  _$UpdateProfileByTypeRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfileByTypeRequestDtoCopyWith<$Res>
    implements $UpdateProfileByTypeRequestDtoCopyWith<$Res> {
  factory _$$_UpdateProfileByTypeRequestDtoCopyWith(
          _$_UpdateProfileByTypeRequestDto value,
          $Res Function(_$_UpdateProfileByTypeRequestDto) then) =
      __$$_UpdateProfileByTypeRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$_UpdateProfileByTypeRequestDtoCopyWithImpl<$Res>
    extends _$UpdateProfileByTypeRequestDtoCopyWithImpl<$Res,
        _$_UpdateProfileByTypeRequestDto>
    implements _$$_UpdateProfileByTypeRequestDtoCopyWith<$Res> {
  __$$_UpdateProfileByTypeRequestDtoCopyWithImpl(
      _$_UpdateProfileByTypeRequestDto _value,
      $Res Function(_$_UpdateProfileByTypeRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_UpdateProfileByTypeRequestDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProfileByTypeRequestDto extends _UpdateProfileByTypeRequestDto {
  const _$_UpdateProfileByTypeRequestDto(
      {@JsonKey(name: 'type') required this.type})
      : super._();

  factory _$_UpdateProfileByTypeRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateProfileByTypeRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'UpdateProfileByTypeRequestDto(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileByTypeRequestDto &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileByTypeRequestDtoCopyWith<_$_UpdateProfileByTypeRequestDto>
      get copyWith => __$$_UpdateProfileByTypeRequestDtoCopyWithImpl<
          _$_UpdateProfileByTypeRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileByTypeRequestDtoToJson(
      this,
    );
  }
}

abstract class _UpdateProfileByTypeRequestDto
    extends UpdateProfileByTypeRequestDto {
  const factory _UpdateProfileByTypeRequestDto(
          {@JsonKey(name: 'type') required final String type}) =
      _$_UpdateProfileByTypeRequestDto;
  const _UpdateProfileByTypeRequestDto._() : super._();

  factory _UpdateProfileByTypeRequestDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfileByTypeRequestDto.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileByTypeRequestDtoCopyWith<_$_UpdateProfileByTypeRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}
