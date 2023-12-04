import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:snowrun_app/domain/app-info/app_info_failure.dart';
import 'package:snowrun_app/domain/app-info/i_app_info_repository.dart';
import 'package:snowrun_app/domain/app-info/model/app_info.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/infrastructure/app-info/app_info_dtos.dart';

import '../../domain/app-info/model/remote_config_key.dart';

@LazySingleton(as: IAppInfoRepository)
class AppInfoRepository implements IAppInfoRepository {
  static const String remoteConfigKey = "appInfo";

  final FirebaseRemoteConfig firebaseRemoteConfig;

  AppInfoRepository(this.firebaseRemoteConfig) {
    firebaseRemoteConfig.fetchAndActivate().then((value) {});
  }

  @override
  Future<Either<AppInfoFailure, AppInfo>> getAppInfo() async {
    try {
      final appInfoValue =
      firebaseRemoteConfig.getValue(RemoteConfigKeys.appInfo).asString();
      final appInfoJson = json.decode(appInfoValue) as Map<String, dynamic>;
      debugPrint("FULTTER_CORE :: getAppInfo :: success json -> $appInfoJson");
      final appInfo = AppInfoDto.fromJson(appInfoJson).toDomain();
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      debugPrint(
          "FULTTER_CORE :: getAppInfo :: success -> ${appInfo.toString()}  //  ${packageInfo.version}");
      return right(appInfo.copyWith(
          appVersion: appInfo.appVersion
              .copyWith(current: VersionVO(packageInfo.version))));
    } catch (e) {
      // 에러 처리
      print("JSON 파싱 에러: $e");
      return left(const AppInfoFailure.unexpected());
    }
  }

}
