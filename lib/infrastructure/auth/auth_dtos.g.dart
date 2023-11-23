// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdTokenRequestDtoImpl _$$IdTokenRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$IdTokenRequestDtoImpl(
      idToken: json['id_token'] as String,
    );

Map<String, dynamic> _$$IdTokenRequestDtoImplToJson(
        _$IdTokenRequestDtoImpl instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
    };

_$SignResponseDtoImpl _$$SignResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SignResponseDtoImpl(
      token: AuthTokenDto.fromJson(json['token'] as Map<String, dynamic>),
      isNewUser: json['is_new_user'] as bool,
    );

Map<String, dynamic> _$$SignResponseDtoImplToJson(
        _$SignResponseDtoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'is_new_user': instance.isNewUser,
    };

_$AuthTokenDtoImpl _$$AuthTokenDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenDtoImpl(
      authToken: json['auth_token'] as String,
    );

Map<String, dynamic> _$$AuthTokenDtoImplToJson(_$AuthTokenDtoImpl instance) =>
    <String, dynamic>{
      'auth_token': instance.authToken,
    };
