import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class TypographyStyles {
  static TextTheme textTheme = const TextTheme(
    caption: TextStyle(fontWeight: FontWeight.w500),
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      color: Color(0xff6A6A6A),
    ),
    headline1: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline2: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline4: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headlineLarge: TextStyle(fontSize: 34),
  );
}
