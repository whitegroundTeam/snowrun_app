part of 'check_permission_bloc.dart';

@freezed
class CheckPermissionState with _$CheckPermissionState {
  const factory CheckPermissionState.initial() = _Initial;

  const factory CheckPermissionState.initPermissionsNeeded() =
      _InitPermissionsNeeded;

  const factory CheckPermissionState.initPermissionsUnNeeded() =
      _InitPermissionsUnNeeded;
}
