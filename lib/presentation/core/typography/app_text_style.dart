import 'package:doortoout/app_style.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static FontWeight bold = FontWeight.bold;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight medium = FontWeight.w400;

  static TextStyle heading01 = TextStyle(
    fontWeight: bold,
    fontSize: 24,
    height: 32 / 24,
    color: AppStyle.white,
    shadows: const <Shadow>[
      Shadow(
        offset: Offset(0, 0),
        blurRadius: 8,
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ],
  );

  static TextStyle heading02 = TextStyle(
    fontWeight: bold,
    fontSize: 20,
    height: 28 / 20,
    color: AppStyle.white,
    shadows: const <Shadow>[
      Shadow(
        offset: Offset(0, 0),
        blurRadius: 8,
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ],
  );

  static TextStyle heading03 = TextStyle(
    fontWeight: bold,
    fontSize: 16,
    height: 24 / 16,
    color: AppStyle.white,
  );

  static TextStyle heading04 = TextStyle(
    fontWeight: semiBold,
    fontSize: 16,
    height: 24 / 16,
    color: AppStyle.white,
  );

  static TextStyle heading05 = TextStyle(
    fontWeight: bold,
    fontSize: 13,
    height: 20 / 13,
    color: AppStyle.white,
  );

  static TextStyle body00 = TextStyle(
    fontWeight: semiBold,
    fontSize: 18,
    height: 28 / 18,
    color: AppStyle.white,
  );

  static TextStyle body01 = TextStyle(
    fontWeight: medium,
    fontSize: 16,
    height: 24 / 16,
    color: AppStyle.white,
  );

  static TextStyle body02 = TextStyle(
    fontWeight: semiBold,
    fontSize: 16,
    height: 24 / 16,
    color: AppStyle.white,
  );

  static TextStyle body03 = TextStyle(
    fontWeight: medium,
    fontSize: 14,
    height: 20 / 14,
    color: AppStyle.white,
  );

  static TextStyle body04 = TextStyle(
    fontWeight: semiBold,
    fontSize: 14,
    height: 20 / 14,
    color: AppStyle.white,
  );

  static TextStyle caption00 = TextStyle(
    fontWeight: medium,
    fontSize: 13,
    height: 16 / 13,
    color: AppStyle.white,
  );

  static TextStyle caption01 = TextStyle(
    fontWeight: semiBold,
    fontSize: 13,
    height: 16 / 13,
    color: AppStyle.white,
  );
}
