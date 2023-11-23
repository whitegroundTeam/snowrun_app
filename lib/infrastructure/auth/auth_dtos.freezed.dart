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
abstract class _$$IdTokenRequestDtoImplCopyWith<$Res>
    implements $IdTokenRequestDtoCopyWith<$Res> {
  factory _$$IdTokenRequestDtoImplCopyWith(_$IdTokenRequestDtoImpl value,
          $Res Function(_$IdTokenRequestDtoImpl) then) =
      __$$IdTokenRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class __$$IdTokenRequestDtoImplCopyWithImpl<$Res>
    extends _$IdTokenRequestDtoCopyWithImpl<$Res, _$IdTokenRequestDtoImpl>
    implements _$$IdTokenRequestDtoImplCopyWith<$Res> {
  __$$IdTokenRequestDtoImplCopyWithImpl(_$IdTokenRequestDtoImpl _value,
      $Res Function(_$IdTokenRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$IdTokenRequestDtoImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdTokenRequestDtoImpl extends _IdTokenRequestDto {
  const _$IdTokenRequestDtoImpl(
      {@JsonKey(name: 'id_token') required this.idToken})
      : super._();

  factory _$IdTokenRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdTokenRequestDtoImplFromJson(json);

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
            other is _$IdTokenRequestDtoImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdTokenRequestDtoImplCopyWith<_$IdTokenRequestDtoImpl> get copyWith =>
      __$$IdTokenRequestDtoImplCopyWithImpl<_$IdTokenRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdTokenRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _IdTokenRequestDto extends IdTokenRequestDto {
  const factory _IdTokenRequestDto(
          {@JsonKey(name: 'id_token') required final String idToken}) =
      _$IdTokenRequestDtoImpl;
  const _IdTokenRequestDto._() : super._();

  factory _IdTokenRequestDto.fromJson(Map<String, dynamic> json) =
      _$IdTokenRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$IdTokenRequestDtoImplCopyWith<_$IdTokenRequestDtoImpl> get copyWith =>
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
abstract class _$$SignResponseDtoImplCopyWith<$Res>
    implements $SignResponseDtoCopyWith<$Res> {
  factory _$$SignResponseDtoImplCopyWith(_$SignResponseDtoImpl value,
          $Res Function(_$SignResponseDtoImpl) then) =
      __$$SignResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') AuthTokenDto token,
      @JsonKey(name: 'is_new_user') bool isNewUser});

  @override
  $AuthTokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class __$$SignResponseDtoImplCopyWithImpl<$Res>
    extends _$SignResponseDtoCopyWithImpl<$Res, _$SignResponseDtoImpl>
    implements _$$SignResponseDtoImplCopyWith<$Res> {
  __$$SignResponseDtoImplCopyWithImpl(
      _$SignResponseDtoImpl _value, $Res Function(_$SignResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isNewUser = null,
  }) {
    return _then(_$SignResponseDtoImpl(
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
class _$SignResponseDtoImpl extends _SignResponseDto {
  const _$SignResponseDtoImpl(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'is_new_user') required this.isNewUser})
      : super._();

  factory _$SignResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignResponseDtoImplFromJson(json);

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
            other is _$SignResponseDtoImpl &&
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
  _$$SignResponseDtoImplCopyWith<_$SignResponseDtoImpl> get copyWith =>
      __$$SignResponseDtoImplCopyWithImpl<_$SignResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SignResponseDto extends SignResponseDto {
  const factory _SignResponseDto(
          {@JsonKey(name: 'token') required final AuthTokenDto token,
          @JsonKey(name: 'is_new_user') required final bool isNewUser}) =
      _$SignResponseDtoImpl;
  const _SignResponseDto._() : super._();

  factory _SignResponseDto.fromJson(Map<String, dynamic> json) =
      _$SignResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  AuthTokenDto get token;
  @override
  @JsonKey(name: 'is_new_user')
  bool get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$SignResponseDtoImplCopyWith<_$SignResponseDtoImpl> get copyWith =>
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
abstract class _$$AuthTokenDtoImplCopyWith<$Res>
    implements $AuthTokenDtoCopyWith<$Res> {
  factory _$$AuthTokenDtoImplCopyWith(
          _$AuthTokenDtoImpl value, $Res Function(_$AuthTokenDtoImpl) then) =
      __$$AuthTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'auth_token') String authToken});
}

/// @nodoc
class __$$AuthTokenDtoImplCopyWithImpl<$Res>
    extends _$AuthTokenDtoCopyWithImpl<$Res, _$AuthTokenDtoImpl>
    implements _$$AuthTokenDtoImplCopyWith<$Res> {
  __$$AuthTokenDtoImplCopyWithImpl(
      _$AuthTokenDtoImpl _value, $Res Function(_$AuthTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$AuthTokenDtoImpl(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenDtoImpl extends _AuthTokenDto {
  const _$AuthTokenDtoImpl(
      {@JsonKey(name: 'auth_token') required this.authToken})
      : super._();

  factory _$AuthTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenDtoImplFromJson(json);

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
            other is _$AuthTokenDtoImpl &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenDtoImplCopyWith<_$AuthTokenDtoImpl> get copyWith =>
      __$$AuthTokenDtoImplCopyWithImpl<_$AuthTokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenDto extends AuthTokenDto {
  const factory _AuthTokenDto(
          {@JsonKey(name: 'auth_token') required final String authToken}) =
      _$AuthTokenDtoImpl;
  const _AuthTokenDto._() : super._();

  factory _AuthTokenDto.fromJson(Map<String, dynamic> json) =
      _$AuthTokenDtoImpl.fromJson;

  @override
  @JsonKey(name: 'auth_token')
  String get authToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenDtoImplCopyWith<_$AuthTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
