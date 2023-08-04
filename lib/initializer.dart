import 'package:flutter/material.dart';
import 'package:snowrun_app/injection.dart';

Future<void> initServices({
  bool isAnalyticsCollectEnabled = false,
  bool isCrashlyticsCollectionEnabled = false,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
}
