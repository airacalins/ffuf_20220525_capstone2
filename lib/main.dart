// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Jobs()),
        ChangeNotifierProvider(create: (context) => Companies()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: SplashScreen(),
        initialRoute: RouteManager.splashScreen,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
