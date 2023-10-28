part of 'permission_actor_bloc.dart';

@freezed
class PermissionActorState with _$PermissionActorState {
  const factory PermissionActorState.ready() = Ready;

  const factory PermissionActorState.permissionLocationRequested() =
      PermissionLocationRequested;

  const factory PermissionActorState.permissionNotificationRequested() =
      PermissionNotificationRequested;

  const factory PermissionActorState.permissionAttRequested() =
      PermissionAttRequested;

  const factory PermissionActorState.permissionLocationGrantedOrDenied() =
      PermissionLocationGrantedOrDenied;

  const factory PermissionActorState.permissionNotificationGrantedOrDenied() =
      PermissionNotificationGrantedOrDenied;

  const factory PermissionActorState.permissionAttGrantedOrDenied() =
      PermissionAttGrantedOrDenied;
}
