import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/app-info/model/app_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice_button_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_operation_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_version.dart';
import 'package:snowrun_app/domain/app-info/model/invite_codes.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_info_dtos.freezed.dart';

part 'app_info_dtos.g.dart';

@freezed
class AppInfoDto with _$AppInfoDto {
  const AppInfoDto._();

  const factory AppInfoDto({
    @JsonKey(name: 'appVersion') AppVersionDto? appVersion,
    @JsonKey(name: 'appNotice') AppNoticeDto? appNotice,
    @JsonKey(name: 'appOperationInfos')
    List<AppOperationInfoDto>? appOperationInfos,
    @JsonKey(name: 'appInviteCodes') InviteCodesDto? appInviteCodes,
  }) = _AppInfoDto;

  AppInfo toDomain() {
    return AppInfo(
      appVersion: appVersion?.toDomain() ?? AppVersion.empty(),
      appNotice: appNotice?.toDomain(),
      appOperationInfos:
          ListVO(appOperationInfos?.map((e) => e.toDomain()).toList() ?? []),
        inviteCodes: appInviteCodes?.toDomain(),
    );
  }

  factory AppInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AppInfoDtoFromJson(json);
}

@freezed
class AppVersionDto with _$AppVersionDto {
  const AppVersionDto._();

  const factory AppVersionDto({
    @JsonKey(name: 'min') required String min,
    @JsonKey(name: 'latest') required String latest,
    @JsonKey(name: 'url') required String url,
  }) = _AppVersionDto;

  AppVersion toDomain() {
    return AppVersion(
      min: VersionVO(min),
      latest: VersionVO(latest),
      url: StringVO(url),
    );
  }

  factory AppVersionDto.fromJson(Map<String, dynamic> json) =>
      _$AppVersionDtoFromJson(json);
}

@freezed
class AppNoticeDto with _$AppNoticeDto {
  const AppNoticeDto._();

  const factory AppNoticeDto({
    @JsonKey(name: 'imageUrl') required String? imageUrl,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'negativeButton')
    AppNoticeButtonInfoDto? negativeButton,
    @JsonKey(name: 'positiveButton')
    AppNoticeButtonInfoDto? positiveButton,
    @JsonKey(name: 'isForcedFinish') bool? isForcedFinish,
  }) = _AppNoticeDto;

  AppNotice toDomain() {
    return AppNotice(
        imageUrl: StringVO(imageUrl ?? ""),
        title: StringVO(title ?? ""),
        description: StringVO(description ?? ""),
        negativeButton: negativeButton?.toDomain(),
        positiveButton: positiveButton?.toDomain(),
        isForcedFinish: BooleanVO(isForcedFinish ?? false));
  }

  factory AppNoticeDto.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeDtoFromJson(json);
}

@freezed
class AppNoticeButtonInfoDto with _$AppNoticeButtonInfoDto {
  const AppNoticeButtonInfoDto._();

  const factory AppNoticeButtonInfoDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'link') required String link,
  }) = _AppNoticeButtonInfoDto;

  AppNoticeButtonInfo toDomain() {
    return AppNoticeButtonInfo(
      title: StringVO(title),
      link: StringVO(link),
    );
  }

  factory AppNoticeButtonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeButtonInfoDtoFromJson(json);
}

@freezed
class AppOperationInfoDto with _$AppOperationInfoDto {
  const AppOperationInfoDto._();

  const factory AppOperationInfoDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'titleColor') String? titleColor,
    @JsonKey(name: 'arrowColor') String? arrowColor,
    @JsonKey(name: 'applyAnimation') bool? applyAnimation,
    @JsonKey(name: 'link') required String link,
  }) = _AppOperationInfoDto;

  AppOperationInfo toDomain() {
    return AppOperationInfo(
      title: StringVO(title),
      titleColor: ColorVO(titleColor),
      arrowColor: ColorVO(arrowColor),
      link: StringVO(link),
      applyAnimation: BooleanVO(applyAnimation ?? false),
    );
  }

  factory AppOperationInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AppOperationInfoDtoFromJson(json);
}

@freezed
class InviteCodesDto with _$InviteCodesDto {
    const InviteCodesDto._();

    const factory InviteCodesDto({
      @JsonKey(name: 'inviteCodes') required List<String> inviteCodes,
    }) = _InviteCodesDto;

    factory InviteCodesDto.fromDomain(InviteCodes inviteCodes) {
        return InviteCodesDto(
          inviteCodes: inviteCodes.inviteCodes.getOrCrash().map((e) => e.toString()).toList(),
        );
    }

    InviteCodes toDomain() {
        return InviteCodes(
            inviteCodes: ListVO(inviteCodes.toList()),
        );
    }

    factory InviteCodesDto.fromJson(Map<String, dynamic> json) =>
        _$InviteCodesDtoFromJson(json);
}