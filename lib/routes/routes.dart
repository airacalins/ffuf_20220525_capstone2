import 'package:flutter/material.dart';

import 'package:flutter_playground/screens/screens.dart';

class RouteManager {
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String appScreen = '/appScreen';
  static const String homeScreen = '/homeScreen';
  static const String applicationScreen = '/applicationsScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case appScreen:
        return MaterialPageRoute(
          builder: (context) => AppScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case applicationScreen:
        return MaterialPageRoute(
          builder: (context) => ApplicationsScreen(),
        );

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
