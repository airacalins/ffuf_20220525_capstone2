// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffFBFBFB),
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Color(0xff6A6A6A),
          ),
          headline1: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w600,
            color: Color(0xff1A1D1E),
          ),
          headline2: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xff1A1D1E),
          ),
          headlineLarge: TextStyle(fontSize: 34),
        ),
        primaryColor: Color(0xff4CA6A8),
        scaffoldBackgroundColor: Color(0xffFBFBFB),
        // scaffoldBackgroundColor: Colors.red.shade100,
        fontFamily: 'Poppins',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: Color(0xff4CA6A8),
            primary: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            textStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      home: LoginScreen(),
      // home: SplashScreen(),
    );
  }
}
