import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:snowrun_app/firebase_options.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/utils/remote_configs.dart';

Future<void> initServices({
  bool isAnalyticsCollectEnabled = false,
  bool isCrashlyticsCollectionEnabled = false,
}) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await dotenv.load(fileName: "assets/env/.env.prod");

  // Firebase
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(isCrashlyticsCollectionEnabled);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // await setUpPushNotification();
  await FirebaseRemoteConfig.instance.fetchAndActivate();

  FirebaseAnalytics.instance
      .setAnalyticsCollectionEnabled(isAnalyticsCollectEnabled);

  await setupRemoteConfig();

  configureDependencies();

  // Hive
  await Hive.initFlutter();
  final hiveProvider = getIt<HiveProvider>();
  await hiveProvider.init();
}
