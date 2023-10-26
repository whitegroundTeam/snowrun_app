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
  String get authToken => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'token') String authToken,
      @JsonKey(name: 'is_new_user') bool isNewUser});
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
    Object? authToken = null,
    Object? isNewUser = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
      {@JsonKey(name: 'token') String authToken,
      @JsonKey(name: 'is_new_user') bool isNewUser});
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
    Object? authToken = null,
    Object? isNewUser = null,
  }) {
    return _then(_$_SignResponseDto(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: 'token') required this.authToken,
      @JsonKey(name: 'is_new_user') required this.isNewUser})
      : super._();

  factory _$_SignResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String authToken;
  @override
  @JsonKey(name: 'is_new_user')
  final bool isNewUser;

  @override
  String toString() {
    return 'SignResponseDto(authToken: $authToken, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignResponseDto &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authToken, isNewUser);

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
          {@JsonKey(name: 'token') required final String authToken,
          @JsonKey(name: 'is_new_user') required final bool isNewUser}) =
      _$_SignResponseDto;
  const _SignResponseDto._() : super._();

  factory _SignResponseDto.fromJson(Map<String, dynamic> json) =
      _$_SignResponseDto.fromJson;

  @override
  @JsonKey(name: 'token')
  String get authToken;
  @override
  @JsonKey(name: 'is_new_user')
  bool get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$_SignResponseDtoCopyWith<_$_SignResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
