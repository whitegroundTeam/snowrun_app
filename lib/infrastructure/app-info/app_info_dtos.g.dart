// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppInfoDtoImpl _$$AppInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoDtoImpl(
      appVersion: json['appVersion'] == null
          ? null
          : AppVersionDto.fromJson(json['appVersion'] as Map<String, dynamic>),
      appNotice: json['appNotice'] == null
          ? null
          : AppNoticeDto.fromJson(json['appNotice'] as Map<String, dynamic>),
      appOperationInfos: (json['appOperationInfos'] as List<dynamic>?)
          ?.map((e) => AppOperationInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppInfoDtoImplToJson(_$AppInfoDtoImpl instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'appNotice': instance.appNotice,
      'appOperationInfos': instance.appOperationInfos,
    };

_$AppVersionDtoImpl _$$AppVersionDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppVersionDtoImpl(
      min: json['min'] as String,
      latest: json['latest'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$AppVersionDtoImplToJson(_$AppVersionDtoImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'latest': instance.latest,
      'url': instance.url,
    };

_$AppNoticeDtoImpl _$$AppNoticeDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppNoticeDtoImpl(
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      negativeButton: json['negativeButton'] == null
          ? null
          : AppNoticeButtonInfoDto.fromJson(
              json['negativeButton'] as Map<String, dynamic>),
      positiveButton: json['positiveButton'] == null
          ? null
          : AppNoticeButtonInfoDto.fromJson(
              json['positiveButton'] as Map<String, dynamic>),
      isForcedFinish: json['isForcedFinish'] as bool?,
    );

Map<String, dynamic> _$$AppNoticeDtoImplToJson(_$AppNoticeDtoImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'negativeButton': instance.negativeButton,
      'positiveButton': instance.positiveButton,
      'isForcedFinish': instance.isForcedFinish,
    };

_$AppNoticeButtonInfoDtoImpl _$$AppNoticeButtonInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNoticeButtonInfoDtoImpl(
      title: json['title'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$AppNoticeButtonInfoDtoImplToJson(
        _$AppNoticeButtonInfoDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
    };

_$AppOperationInfoDtoImpl _$$AppOperationInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AppOperationInfoDtoImpl(
      title: json['title'] as String,
      titleColor: json['titleColor'] as String?,
      arrowColor: json['arrowColor'] as String?,
      applyAnimation: json['applyAnimation'] as bool?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$AppOperationInfoDtoImplToJson(
        _$AppOperationInfoDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'titleColor': instance.titleColor,
      'arrowColor': instance.arrowColor,
      'applyAnimation': instance.applyAnimation,
      'link': instance.link,
    };
