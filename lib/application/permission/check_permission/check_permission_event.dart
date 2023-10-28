part of 'check_permission_bloc.dart';

@freezed
class CheckPermissionEvent with _$CheckPermissionEvent {
  const factory CheckPermissionEvent.checkInitialPermissions() =
      _CheckInitialPermissions;
}
