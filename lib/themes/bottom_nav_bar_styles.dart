import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class BottomNavBarStyles {
  static const theme = BottomNavigationBarThemeData(
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
    showSelectedLabels: false,
    backgroundColor: Colors.white,
  );
}
