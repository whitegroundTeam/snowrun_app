// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:firebase_remote_config/firebase_remote_config.dart';

Future<FirebaseRemoteConfig> setupRemoteConfig() async {
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(seconds: 10),
    ),
  );

  await remoteConfig.setDefaults(<String, dynamic>{
    RemoteConfigKeys.appInfo: "",
  });

  RemoteConfigValue(null, ValueSource.valueStatic);
  await remoteConfig.fetchAndActivate();
  return remoteConfig;
}

class RemoteConfigKeys {
  static const appInfo = "appInfo";
}
