import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';

part 'check_permission_event.dart';

part 'check_permission_state.dart';

part 'check_permission_bloc.freezed.dart';

@injectable
class CheckPermissionBloc
    extends Bloc<CheckPermissionEvent, CheckPermissionState> {
  final HiveProvider hiveProvider;

  CheckPermissionBloc(this.hiveProvider)
      : super(const CheckPermissionState.initial()) {
    on<_CheckInitialPermissions>((event, emit) async {
      final hasLocationPermission = await Permission.location.status.isGranted;
      final hasNotificationPermission =
          await Permission.notification.status.isGranted;
      final hasAttPermission =
          (await AppTrackingTransparency.trackingAuthorizationStatus) !=
              TrackingStatus.notDetermined;

      bool userAlreadyHasPermissions = true;
      if (Platform.isIOS) {
        userAlreadyHasPermissions = hasLocationPermission ||
            hasNotificationPermission ||
            hasAttPermission;
      } else if (Platform.isAndroid) {
        final int? androidVersion = await getAndroidVersion();
        if (androidVersion != null) {
          if (androidVersion < 33) {
            userAlreadyHasPermissions = hasLocationPermission;
          } else {
            userAlreadyHasPermissions =
                hasLocationPermission || hasNotificationPermission;
          }
        }
      }

      final isInitPermissionsNeeded = hiveProvider.isInitPermissionsNeeded();
      if(isInitPermissionsNeeded) {
        hiveProvider.markInitPermissionsAsSeen();
      }
      if (!userAlreadyHasPermissions && isInitPermissionsNeeded) {
        emit(const CheckPermissionState.initPermissionsNeeded());
      } else {
        emit(const CheckPermissionState.initPermissionsUnNeeded());
      }
    });
  }

  Future<int?> getAndroidVersion() async {
    if (Platform.isAndroid) {
      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.version.sdkInt;
    }
    return null;
  }
}
