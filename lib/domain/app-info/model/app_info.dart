import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice.dart';
import 'package:snowrun_app/domain/app-info/model/app_operation_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_version.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_info.freezed.dart';

@freezed
class AppInfo with _$AppInfo {
  const AppInfo._();

  const factory AppInfo({
    required AppVersion appVersion,
    required AppNotice appNotice,
    required ListVO<AppOperationInfo> appOperationInfos,
  }) = _AppInfo;

  factory AppInfo.empty() => AppInfo(
        appVersion: AppVersion.empty(),
        appNotice: AppNotice.empty(),
        appOperationInfos: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return appVersion.failureOption.fold(() => right(unit), (f) => left(f))
        .andThen(appNotice.failureOption.fold(() => right(unit), (a) => left(a)))
        .andThen(appOperationInfos.failureOrUnit).fold((f) => some(f), (_) => none());
  }
}