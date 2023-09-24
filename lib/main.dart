import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:snowrun_app/app_widget.dart';
import 'package:snowrun_app/initializer.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initServices(
  isAnalyticsCollectEnabled: true,
  isCrashlyticsCollectionEnabled: true,
  );
  runApp(const MainApp());
}