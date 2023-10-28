part of 'permission_actor_bloc.dart';

@freezed
class PermissionActorEvent with _$PermissionActorEvent {
  const factory PermissionActorEvent.permissionHandled() = PermissionHandled;

  const factory PermissionActorEvent.requestNotificationPermission() =
      RequestNotificationPermission;

  const factory PermissionActorEvent.requestAttPermission() =
      RequestAttPermission;

  const factory PermissionActorEvent.requestLocationPermission() =
      RequestLocationPermission;
}
