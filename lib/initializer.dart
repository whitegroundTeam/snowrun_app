import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:snowrun_app/firebase_options.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';

Future<void> initServices({
  bool isAnalyticsCollectEnabled = false,
  bool isCrashlyticsCollectionEnabled = false,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  // Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(isCrashlyticsCollectionEnabled);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // await setUpPushNotification();
  // await setupRemoteConfig();
  await FirebaseRemoteConfig.instance.fetchAndActivate();

  FirebaseAnalytics.instance
      .setAnalyticsCollectionEnabled(isAnalyticsCollectEnabled);

  // Hive
  await Hive.initFlutter();
  final hiveProvider = getIt<HiveProvider>();
  await hiveProvider.init();
}
