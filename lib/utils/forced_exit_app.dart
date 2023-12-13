import 'dart:io';

import 'package:flutter/services.dart';

exitAppForced() {
  if (Platform.isAndroid) {
    SystemNavigator.pop();
  } else if (Platform.isIOS) {
    exit(0);
  }
}