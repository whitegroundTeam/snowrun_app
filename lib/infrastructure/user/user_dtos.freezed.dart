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
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
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
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? location = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$UserDtoImpl(
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
class _$UserDtoImpl extends _UserDto {
  const _$UserDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'image') this.profileImage})
      : super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

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
            other is _$UserDtoImpl &&
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
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'nickname') required final String nickname,
      @JsonKey(name: 'location') final UserLocationDto? location,
      @JsonKey(name: 'image') final String? profileImage}) = _$UserDtoImpl;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

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
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
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
abstract class _$$UserLocationDtoImplCopyWith<$Res>
    implements $UserLocationDtoCopyWith<$Res> {
  factory _$$UserLocationDtoImplCopyWith(_$UserLocationDtoImpl value,
          $Res Function(_$UserLocationDtoImpl) then) =
      __$$UserLocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lng') double lng});
}

/// @nodoc
class __$$UserLocationDtoImplCopyWithImpl<$Res>
    extends _$UserLocationDtoCopyWithImpl<$Res, _$UserLocationDtoImpl>
    implements _$$UserLocationDtoImplCopyWith<$Res> {
  __$$UserLocationDtoImplCopyWithImpl(
      _$UserLocationDtoImpl _value, $Res Function(_$UserLocationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$UserLocationDtoImpl(
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
class _$UserLocationDtoImpl extends _UserLocationDto {
  const _$UserLocationDtoImpl(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lng') required this.lng})
      : super._();

  factory _$UserLocationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationDtoImplFromJson(json);

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
            other is _$UserLocationDtoImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationDtoImplCopyWith<_$UserLocationDtoImpl> get copyWith =>
      __$$UserLocationDtoImplCopyWithImpl<_$UserLocationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationDtoImplToJson(
      this,
    );
  }
}

abstract class _UserLocationDto extends UserLocationDto {
  const factory _UserLocationDto(
      {@JsonKey(name: 'lat') required final double lat,
      @JsonKey(name: 'lng') required final double lng}) = _$UserLocationDtoImpl;
  const _UserLocationDto._() : super._();

  factory _UserLocationDto.fromJson(Map<String, dynamic> json) =
      _$UserLocationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lng')
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationDtoImplCopyWith<_$UserLocationDtoImpl> get copyWith =>
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
abstract class _$$SnowBallProfileImageDtoImplCopyWith<$Res>
    implements $SnowBallProfileImageDtoCopyWith<$Res> {
  factory _$$SnowBallProfileImageDtoImplCopyWith(
          _$SnowBallProfileImageDtoImpl value,
          $Res Function(_$SnowBallProfileImageDtoImpl) then) =
      __$$SnowBallProfileImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$SnowBallProfileImageDtoImplCopyWithImpl<$Res>
    extends _$SnowBallProfileImageDtoCopyWithImpl<$Res,
        _$SnowBallProfileImageDtoImpl>
    implements _$$SnowBallProfileImageDtoImplCopyWith<$Res> {
  __$$SnowBallProfileImageDtoImplCopyWithImpl(
      _$SnowBallProfileImageDtoImpl _value,
      $Res Function(_$SnowBallProfileImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_$SnowBallProfileImageDtoImpl(
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
class _$SnowBallProfileImageDtoImpl extends _SnowBallProfileImageDto {
  const _$SnowBallProfileImageDtoImpl(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'url') required this.url})
      : super._();

  factory _$SnowBallProfileImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnowBallProfileImageDtoImplFromJson(json);

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
            other is _$SnowBallProfileImageDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnowBallProfileImageDtoImplCopyWith<_$SnowBallProfileImageDtoImpl>
      get copyWith => __$$SnowBallProfileImageDtoImplCopyWithImpl<
          _$SnowBallProfileImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnowBallProfileImageDtoImplToJson(
      this,
    );
  }
}

abstract class _SnowBallProfileImageDto extends SnowBallProfileImageDto {
  const factory _SnowBallProfileImageDto(
          {@JsonKey(name: 'key') required final String key,
          @JsonKey(name: 'url') required final String url}) =
      _$SnowBallProfileImageDtoImpl;
  const _SnowBallProfileImageDto._() : super._();

  factory _SnowBallProfileImageDto.fromJson(Map<String, dynamic> json) =
      _$SnowBallProfileImageDtoImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$SnowBallProfileImageDtoImplCopyWith<_$SnowBallProfileImageDtoImpl>
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
abstract class _$$UpdateProfileByTypeRequestDtoImplCopyWith<$Res>
    implements $UpdateProfileByTypeRequestDtoCopyWith<$Res> {
  factory _$$UpdateProfileByTypeRequestDtoImplCopyWith(
          _$UpdateProfileByTypeRequestDtoImpl value,
          $Res Function(_$UpdateProfileByTypeRequestDtoImpl) then) =
      __$$UpdateProfileByTypeRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$UpdateProfileByTypeRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdateProfileByTypeRequestDtoCopyWithImpl<$Res,
        _$UpdateProfileByTypeRequestDtoImpl>
    implements _$$UpdateProfileByTypeRequestDtoImplCopyWith<$Res> {
  __$$UpdateProfileByTypeRequestDtoImplCopyWithImpl(
      _$UpdateProfileByTypeRequestDtoImpl _value,
      $Res Function(_$UpdateProfileByTypeRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UpdateProfileByTypeRequestDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileByTypeRequestDtoImpl
    extends _UpdateProfileByTypeRequestDto {
  const _$UpdateProfileByTypeRequestDtoImpl(
      {@JsonKey(name: 'type') required this.type})
      : super._();

  factory _$UpdateProfileByTypeRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateProfileByTypeRequestDtoImplFromJson(json);

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
            other is _$UpdateProfileByTypeRequestDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileByTypeRequestDtoImplCopyWith<
          _$UpdateProfileByTypeRequestDtoImpl>
      get copyWith => __$$UpdateProfileByTypeRequestDtoImplCopyWithImpl<
          _$UpdateProfileByTypeRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileByTypeRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileByTypeRequestDto
    extends UpdateProfileByTypeRequestDto {
  const factory _UpdateProfileByTypeRequestDto(
          {@JsonKey(name: 'type') required final String type}) =
      _$UpdateProfileByTypeRequestDtoImpl;
  const _UpdateProfileByTypeRequestDto._() : super._();

  factory _UpdateProfileByTypeRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileByTypeRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileByTypeRequestDtoImplCopyWith<
          _$UpdateProfileByTypeRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
