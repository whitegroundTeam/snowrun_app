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
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  UserLocationDto? get location => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'location') UserLocationDto? location});

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
    Object? nickname = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
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
      {@JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'location') UserLocationDto? location});

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
    Object? nickname = null,
    Object? location = freezed,
  }) {
    return _then(_$_UserDto(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'location') this.location})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'location')
  final UserLocationDto? location;

  @override
  String toString() {
    return 'UserDto(nickname: $nickname, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, location);

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
      {@JsonKey(name: 'nickname') required final String nickname,
      @JsonKey(name: 'location') final UserLocationDto? location}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'location')
  UserLocationDto? get location;
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
