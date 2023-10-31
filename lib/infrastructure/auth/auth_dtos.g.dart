// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdTokenRequestDto _$$_IdTokenRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_IdTokenRequestDto(
      idToken: json['id_token'] as String,
    );

Map<String, dynamic> _$$_IdTokenRequestDtoToJson(
        _$_IdTokenRequestDto instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
    };

_$_SignResponseDto _$$_SignResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_SignResponseDto(
      token: AuthTokenDto.fromJson(json['token'] as Map<String, dynamic>),
      isNewUser: json['is_new_user'] as bool,
    );

Map<String, dynamic> _$$_SignResponseDtoToJson(_$_SignResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'is_new_user': instance.isNewUser,
    };

_$_AuthTokenDto _$$_AuthTokenDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthTokenDto(
      authToken: json['auth_token'] as String,
    );

Map<String, dynamic> _$$_AuthTokenDtoToJson(_$_AuthTokenDto instance) =>
    <String, dynamic>{
      'auth_token': instance.authToken,
    };
