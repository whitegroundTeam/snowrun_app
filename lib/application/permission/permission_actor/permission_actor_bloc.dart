import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_actor_event.dart';

part 'permission_actor_state.dart';

part 'permission_actor_bloc.freezed.dart';

@injectable
class PermissionActorBloc
    extends Bloc<PermissionActorEvent, PermissionActorState> {
  PermissionActorBloc() : super(const PermissionActorState.ready()) {
    on<RequestNotificationPermission>((event, emit) async {
      emit(const PermissionActorState.permissionNotificationRequested());
      await FirebaseMessaging.instance.requestPermission();
      emit(const PermissionActorState.permissionNotificationGrantedOrDenied());
    });

    on<RequestAttPermission>((event, emit) async {
      emit(const PermissionActorState.permissionAttRequested());
      try {
        final TrackingStatus status =
            await AppTrackingTransparency.trackingAuthorizationStatus;
        if (status == TrackingStatus.notDetermined) {
          // FIXME: reqeustTrackingAuthorization이 동작완료를 보장하지 못해서 임시 Delay를 넣음
          await Future.delayed(const Duration(seconds: 1));
          await AppTrackingTransparency.requestTrackingAuthorization();
        }
        emit(const PermissionActorState.permissionAttGrantedOrDenied());
      } on PlatformException {
        emit(const PermissionActorState.permissionAttGrantedOrDenied());
      }
    });

    on<RequestLocationPermission>((event, emit) async {
      emit(const PermissionActorState.permissionLocationRequested());
      await Permission.location.request();
      emit(const PermissionActorState.permissionLocationGrantedOrDenied());
    });

    on<PermissionHandled>((event, emit) {
      emit(const PermissionActorState.ready());
    });
  }
}
