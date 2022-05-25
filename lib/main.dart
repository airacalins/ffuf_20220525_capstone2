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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: TextTheme(bodyText1: TextStyle(fontWeight: FontWeight.normal)),
        primaryColor: const Color(0xff4CA6A8),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
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
          // ButtonStyle(
          //   padding: MaterialStateProperty.all<EdgeInsetsGeometry>(),
          //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4CA6A8)), //button color
          //   foregroundColor: MaterialStateProperty.all<Color>(Color(0xffffffff)), //text (and icon)
          // ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
