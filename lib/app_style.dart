// Flutter imports:
// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class AppStyle {
  static const Color transparent = Color(0x00ffffff);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color background = Color(0xff101012);
  static const Color secondaryBackground = Color(0xff18171E);
  static const Color actionIconColor = Color(0xff62626B);
  static const Color accentColor = Color(0xffFF8C00);

  static const Color secondaryTextColor = Color(0xffA09FA6);

  //Toast
  static const Color toastBackground = Color(0xff3C3C47);
  static const Color toastActionButtonBackground = Color(0xff4D4C5B);
  static const Color toastText = Color(0xffffffff);

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
      scaffoldBackgroundColor: AppStyle.background,
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
          fontSize: 18.0,
          fontFamily: kFontFamily,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18.0,
          fontFamily: kFontFamily,
        ),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: kTextStyle,
        toolbarTextStyle: kTextStyle,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.pink,
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ).copyWith(
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) {
              return const BorderSide(
                color: Colors.pink,
              ); // Defer to the widget's default.
            },
          ),
        ),
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
