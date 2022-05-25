import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppBarStyles.appBarTheme,
    textTheme: TypographyStyles.textTheme,
    primaryColor: ColorThemeData.primaryColor,
    scaffoldBackgroundColor: const Color(0xffFBFBFB),
    fontFamily: 'Poppins',
    elevatedButtonTheme: ButtonStyles.elevatedButtonTheme,
  );
}
