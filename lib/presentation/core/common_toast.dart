import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      webPosition: "bottom",
      webBgColor: "#333333",
      fontSize: 14.0);
}
