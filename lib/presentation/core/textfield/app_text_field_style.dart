import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextFieldStyle {
  static FontWeight bold = FontWeight.bold;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight medium = FontWeight.w400;

  static InputDecoration inputfield = InputDecoration(
    fillColor: AppStyle.inputFieldBackground,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    hintStyle: AppTextStyle.body01.copyWith(
      color: AppStyle.white.withOpacity(0.6),
    ),
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppStyle.accentColor, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: AppStyle.inputFieldInactiveBorder, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static InputDecoration transparent = InputDecoration(
    fillColor: AppStyle.inputFieldBackground,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    hintStyle: AppTextStyle.body01.copyWith(
      color: AppStyle.white.withOpacity(0.6),
    ),
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppStyle.transparent, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: AppStyle.transparent, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
