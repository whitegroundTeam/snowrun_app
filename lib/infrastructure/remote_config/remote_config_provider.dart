import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigProvider{
  late final FirebaseRemoteConfig _remoteConfig;

  RemoteConfigProvider() {
    _remoteConfig = FirebaseRemoteConfig.instance;
  }

  Future<void> initialize() async {
    // Set default values
    _remoteConfig.setDefaults(<String, dynamic>{
      'some_config_key': 'default_value',
    });

    // Fetch and activate values
    await _remoteConfig.fetch();
    await _remoteConfig.activate();
  }

  String getSomeConfigValue() {
    return _remoteConfig.getString('some_config_key');
  }
}