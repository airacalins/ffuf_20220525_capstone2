import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppBarStyles.appBarTheme,
    fontFamily: 'Poppins',
    primaryColor: ColorTheme.primaryColor,
    // scaffoldBackgroundColor: ColorTheme.scaffoldBackgroundColor,
    scaffoldBackgroundColor: Colors.grey,
    textTheme: TypographyStyles.textTheme,
    elevatedButtonTheme: ButtonStyles.elevatedButtonTheme,
    tabBarTheme: TabBarStyles.tabBarStyles,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      elevation: 0,
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        color: Colors.red,
      ),
      selectedIconTheme: IconThemeData(
        color: ColorTheme.primaryColor,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.red,
        fontSize: 10,
      ),
      backgroundColor: Colors.white,
    ),
  );
}
