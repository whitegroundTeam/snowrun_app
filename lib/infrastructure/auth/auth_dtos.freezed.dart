// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdTokenRequestDto _$IdTokenRequestDtoFromJson(Map<String, dynamic> json) {
  return _IdTokenRequestDto.fromJson(json);
}

/// @nodoc
mixin _$IdTokenRequestDto {
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdTokenRequestDtoCopyWith<IdTokenRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdTokenRequestDtoCopyWith<$Res> {
  factory $IdTokenRequestDtoCopyWith(
          IdTokenRequestDto value, $Res Function(IdTokenRequestDto) then) =
      _$IdTokenRequestDtoCopyWithImpl<$Res, IdTokenRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class _$IdTokenRequestDtoCopyWithImpl<$Res, $Val extends IdTokenRequestDto>
    implements $IdTokenRequestDtoCopyWith<$Res> {
  _$IdTokenRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdTokenRequestDtoCopyWith<$Res>
    implements $IdTokenRequestDtoCopyWith<$Res> {
  factory _$$_IdTokenRequestDtoCopyWith(_$_IdTokenRequestDto value,
          $Res Function(_$_IdTokenRequestDto) then) =
      __$$_IdTokenRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class __$$_IdTokenRequestDtoCopyWithImpl<$Res>
    extends _$IdTokenRequestDtoCopyWithImpl<$Res, _$_IdTokenRequestDto>
    implements _$$_IdTokenRequestDtoCopyWith<$Res> {
  __$$_IdTokenRequestDtoCopyWithImpl(
      _$_IdTokenRequestDto _value, $Res Function(_$_IdTokenRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$_IdTokenRequestDto(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdTokenRequestDto extends _IdTokenRequestDto {
  const _$_IdTokenRequestDto({@JsonKey(name: 'id_token') required this.idToken})
      : super._();

  factory _$_IdTokenRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_IdTokenRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String idToken;

  @override
  String toString() {
    return 'IdTokenRequestDto(idToken: $idToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdTokenRequestDto &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdTokenRequestDtoCopyWith<_$_IdTokenRequestDto> get copyWith =>
      __$$_IdTokenRequestDtoCopyWithImpl<_$_IdTokenRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdTokenRequestDtoToJson(
      this,
    );
  }
}

abstract class _IdTokenRequestDto extends IdTokenRequestDto {
  const factory _IdTokenRequestDto(
          {@JsonKey(name: 'id_token') required final String idToken}) =
      _$_IdTokenRequestDto;
  const _IdTokenRequestDto._() : super._();

  factory _IdTokenRequestDto.fromJson(Map<String, dynamic> json) =
      _$_IdTokenRequestDto.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$_IdTokenRequestDtoCopyWith<_$_IdTokenRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SignResponseDto _$SignResponseDtoFromJson(Map<String, dynamic> json) {
  return _SignResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SignResponseDto {
  @JsonKey(name: 'token')
  AuthTokenDto get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new_user')
  bool get isNewUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignResponseDtoCopyWith<SignResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignResponseDtoCopyWith<$Res> {
  factory $SignResponseDtoCopyWith(
          SignResponseDto value, $Res Function(SignResponseDto) then) =
      _$SignResponseDtoCopyWithImpl<$Res, SignResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') AuthTokenDto token,
      @JsonKey(name: 'is_new_user') bool isNewUser});

  $AuthTokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class _$SignResponseDtoCopyWithImpl<$Res, $Val extends SignResponseDto>
    implements $SignResponseDtoCopyWith<$Res> {
  _$SignResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isNewUser = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthTokenDto,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenDtoCopyWith<$Res> get token {
    return $AuthTokenDtoCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignResponseDtoCopyWith<$Res>
    implements $SignResponseDtoCopyWith<$Res> {
  factory _$$_SignResponseDtoCopyWith(
          _$_SignResponseDto value, $Res Function(_$_SignResponseDto) then) =
      __$$_SignResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') AuthTokenDto token,
      @JsonKey(name: 'is_new_user') bool isNewUser});

  @override
  $AuthTokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class __$$_SignResponseDtoCopyWithImpl<$Res>
    extends _$SignResponseDtoCopyWithImpl<$Res, _$_SignResponseDto>
    implements _$$_SignResponseDtoCopyWith<$Res> {
  __$$_SignResponseDtoCopyWithImpl(
      _$_SignResponseDto _value, $Res Function(_$_SignResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isNewUser = null,
  }) {
    return _then(_$_SignResponseDto(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthTokenDto,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignResponseDto extends _SignResponseDto {
  const _$_SignResponseDto(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'is_new_user') required this.isNewUser})
      : super._();

  factory _$_SignResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'token')
  final AuthTokenDto token;
  @override
  @JsonKey(name: 'is_new_user')
  final bool isNewUser;

  @override
  String toString() {
    return 'SignResponseDto(token: $token, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignResponseDto &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignResponseDtoCopyWith<_$_SignResponseDto> get copyWith =>
      __$$_SignResponseDtoCopyWithImpl<_$_SignResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignResponseDtoToJson(
      this,
    );
  }
}

abstract class _SignResponseDto extends SignResponseDto {
  const factory _SignResponseDto(
          {@JsonKey(name: 'token') required final AuthTokenDto token,
          @JsonKey(name: 'is_new_user') required final bool isNewUser}) =
      _$_SignResponseDto;
  const _SignResponseDto._() : super._();

  factory _SignResponseDto.fromJson(Map<String, dynamic> json) =
      _$_SignResponseDto.fromJson;

  @override
  @JsonKey(name: 'token')
  AuthTokenDto get token;
  @override
  @JsonKey(name: 'is_new_user')
  bool get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$_SignResponseDtoCopyWith<_$_SignResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthTokenDto _$AuthTokenDtoFromJson(Map<String, dynamic> json) {
  return _AuthTokenDto.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenDto {
  @JsonKey(name: 'auth_token')
  String get authToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenDtoCopyWith<AuthTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenDtoCopyWith<$Res> {
  factory $AuthTokenDtoCopyWith(
          AuthTokenDto value, $Res Function(AuthTokenDto) then) =
      _$AuthTokenDtoCopyWithImpl<$Res, AuthTokenDto>;
  @useResult
  $Res call({@JsonKey(name: 'auth_token') String authToken});
}

/// @nodoc
class _$AuthTokenDtoCopyWithImpl<$Res, $Val extends AuthTokenDto>
    implements $AuthTokenDtoCopyWith<$Res> {
  _$AuthTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthTokenDtoCopyWith<$Res>
    implements $AuthTokenDtoCopyWith<$Res> {
  factory _$$_AuthTokenDtoCopyWith(
          _$_AuthTokenDto value, $Res Function(_$_AuthTokenDto) then) =
      __$$_AuthTokenDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'auth_token') String authToken});
}

/// @nodoc
class __$$_AuthTokenDtoCopyWithImpl<$Res>
    extends _$AuthTokenDtoCopyWithImpl<$Res, _$_AuthTokenDto>
    implements _$$_AuthTokenDtoCopyWith<$Res> {
  __$$_AuthTokenDtoCopyWithImpl(
      _$_AuthTokenDto _value, $Res Function(_$_AuthTokenDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$_AuthTokenDto(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthTokenDto extends _AuthTokenDto {
  const _$_AuthTokenDto({@JsonKey(name: 'auth_token') required this.authToken})
      : super._();

  factory _$_AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthTokenDtoFromJson(json);

  @override
  @JsonKey(name: 'auth_token')
  final String authToken;

  @override
  String toString() {
    return 'AuthTokenDto(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthTokenDto &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthTokenDtoCopyWith<_$_AuthTokenDto> get copyWith =>
      __$$_AuthTokenDtoCopyWithImpl<_$_AuthTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthTokenDtoToJson(
      this,
    );
  }
}

abstract class _AuthTokenDto extends AuthTokenDto {
  const factory _AuthTokenDto(
          {@JsonKey(name: 'auth_token') required final String authToken}) =
      _$_AuthTokenDto;
  const _AuthTokenDto._() : super._();

  factory _AuthTokenDto.fromJson(Map<String, dynamic> json) =
      _$_AuthTokenDto.fromJson;

  @override
  @JsonKey(name: 'auth_token')
  String get authToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthTokenDtoCopyWith<_$_AuthTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
