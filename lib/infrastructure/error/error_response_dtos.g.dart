// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppErrorDtoImpl _$$AppErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppErrorDtoImpl(
      code: json['code'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$AppErrorDtoImplToJson(_$AppErrorDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
      'status': instance.status,
    };
