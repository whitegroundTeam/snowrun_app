import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:snowrun_app/app_widget.dart';
import 'package:snowrun_app/firebase_options.dart';
import 'package:snowrun_app/initializer.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      await initServices(
        isAnalyticsCollectEnabled: true,
        isCrashlyticsCollectionEnabled: true,
      );

      await SentryFlutter.init(
        (options) {
          options.environment = "production";
          options.dsn = dotenv.env['SENTRY_OPTIONS_DSN'] ?? "";
        },
        appRunner: () => runApp(const MainApp()),
      );
    },
    (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack),
  );
}
