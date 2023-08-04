import 'package:flutter/material.dart';
import 'package:snowrun_app/app_widget.dart';
import 'package:snowrun_app/initializer.dart';

Future<void> main() async {
  await initServices(
  isAnalyticsCollectEnabled: true,
  isCrashlyticsCollectionEnabled: true,
  );
  runApp(const MainApp());
}