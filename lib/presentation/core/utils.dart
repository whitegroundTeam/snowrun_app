import 'package:flutter/services.dart';

Future<String> getClipboardText() async {
  ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
  String? copiedText = data?.text;
  return copiedText ?? "";
}