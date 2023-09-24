// Flutter imports:
// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyle {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);

  static const Color testPink = Color(0xffffaacc);

  static TextTheme kTextTheme = const TextTheme().apply(
    fontFamily: kFontFamily,
  );
  static const String kFontFamily = 'Pretendard';

  static TextStyle kTextStyle = const TextStyle(
    fontFamily: AppStyle.kFontFamily,
    // 텍스트 폭 고정으로 사용
    // fontFeatures: [FontFeature.tabularFigures()],
  );

  static ThemeData themeData(BuildContext context) {
    final defaultTheme = Theme.of(context);

    return ThemeData(
      fontFamily: kFontFamily,
    ).copyWith(
      scaffoldBackgroundColor: AppStyle.black,
      textTheme: defaultTheme.textTheme.apply(
        fontFamily: kFontFamily,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
          MaterialStateColor.resolveWith((states) => AppStyle.black),
          backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
          overlayColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
      ),
      colorScheme: const ColorScheme.light().copyWith(
          secondary: AppStyle.black, primary: AppStyle.black),
      tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17.0,
          fontFamily: kFontFamily,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 17.0,
          fontFamily: kFontFamily,
        ),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: kTextStyle,
        toolbarTextStyle: kTextStyle,
      ),
    );
  }
}

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
