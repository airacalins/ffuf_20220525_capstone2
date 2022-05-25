// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: ApplicationsScreen(),
    );
  }
}
