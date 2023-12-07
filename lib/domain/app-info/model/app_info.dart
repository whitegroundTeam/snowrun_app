import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice.dart';
import 'package:snowrun_app/domain/app-info/model/app_operation_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_version.dart';
import 'package:snowrun_app/domain/app-info/model/invite_codes.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_info.freezed.dart';

@freezed
class AppInfo with _$AppInfo {
  const AppInfo._();

  const factory AppInfo({
    required AppVersion appVersion,
    AppNotice? appNotice,
    ListVO<AppOperationInfo>? appOperationInfos,
    InviteCodes? inviteCodes,
  }) = _AppInfo;

  factory AppInfo.empty() => AppInfo(
        appVersion: AppVersion.empty(),
        appNotice: null,
        appOperationInfos: null,
        inviteCodes: null,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return appVersion.failureOption
        .fold(() => right(unit), (f) => left(f))
        .fold((f) => some(f), (_) => none());
  }
}
