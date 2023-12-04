part of 'app_info_bloc.dart';

@freezed
class AppInfoEvent with _$AppInfoEvent {
  const factory AppInfoEvent.initialized() = _Initialized;
  const factory AppInfoEvent.getAppInfo() = _GetAppInfo;
}