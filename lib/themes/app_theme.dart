import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppBarStyles.appBarTheme,
    fontFamily: 'Poppins',
    primaryColor: ColorTheme.primaryColor,
    scaffoldBackgroundColor: ColorTheme.scaffoldBackgroundColor,
    textTheme: TypographyStyles.textTheme,
    elevatedButtonTheme: ButtonStyles.elevatedButtonTheme,
  );
}
