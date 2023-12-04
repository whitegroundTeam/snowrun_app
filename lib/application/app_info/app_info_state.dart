part of 'app_info_bloc.dart';

@freezed
class AppInfoState with _$AppInfoState {
  const factory AppInfoState({
    required DefaultStatus status,
    required AppVersion appVersion,
    required bool? isLatestVersion,
    required bool? isAvailableVersion,
    required bool? canUpdateVersion,
    required AppNotice appNotice,
    required bool? isShowAppNotice,
    required List<AppOperationInfo> appOperationInfos,
    required bool isLoading,
  }) = _AppInfoState;

  factory AppInfoState.initial() => AppInfoState(
        status: DefaultStatus.initial,
        appVersion: AppVersion.empty(),
        isLatestVersion: null,
        isAvailableVersion: null,
        canUpdateVersion: null,
        appNotice: AppNotice.empty(),
        isShowAppNotice: null,
        appOperationInfos: [],
        isLoading: false,
      );
}
