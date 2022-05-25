import 'package:flutter/material.dart';

class ButtonStyles {
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: const Color(0xff4CA6A8),
      primary: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      textStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 15,
        fontFamily: 'Poppins',
      ),
    ),
  );
}
