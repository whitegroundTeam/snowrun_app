import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/app-info/i_app_info_repository.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice.dart';
import 'package:snowrun_app/domain/app-info/model/app_operation_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_version.dart';

part 'app_info_event.dart';

part 'app_info_state.dart';

part 'app_info_bloc.freezed.dart';

@injectable
class AppInfoBloc extends Bloc<AppInfoEvent, AppInfoState> {
  final IAppInfoRepository appInfoRepository;

  AppInfoBloc(this.appInfoRepository) : super(AppInfoState.initial()) {
    on<_GetAppInfo>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress, isLoading: true));
      final failureOrResponse = await appInfoRepository.getAppInfo();

      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(
            status: DefaultStatus.failure,
            appVersion: AppVersion.empty(),
            appNotice: AppNotice.empty(),
            isLoading: false,
          ),
          (appInfo) => state.copyWith(
            status: DefaultStatus.success,
            appVersion: appInfo.appVersion,
            isLatestVersion: isLatestVersion(appInfo.appVersion),
            isAvailableVersion: isAvailableVersion(appInfo.appVersion),
            canUpdateVersion: !isLatestVersion(appInfo.appVersion),
            appNotice: appInfo.appNotice,
            isShowAppNotice: isShowAppNotice(appInfo.appNotice),
            appOperationInfos: appInfo.appOperationInfos.getOrCrash(),
            isLoading: false,
          ),
        ),
      );
    });
  }

  isShowAppNotice(AppNotice appNotice) =>
      appNotice.imageUrl.getOrCrash().isNotEmpty ||
      appNotice.title.getOrCrash().isNotEmpty ||
      appNotice.description.getOrCrash().isNotEmpty;

  isAvailableVersion(AppVersion appVersion) {
    final min = appVersion.min.getOrCrash();
    final current = appVersion.current?.getOrCrash();
    if (current != null) {
      if (current < min) {
        return false;
      }
    }
    return true;
  }

  isLatestVersion(AppVersion appVersion) {
    final current = appVersion.current?.getOrCrash();
    final latest = appVersion.latest.getOrCrash();
    if (current != null) {
      if (current >= latest) {
        return true;
      }
    }
    return false;
  }
}
