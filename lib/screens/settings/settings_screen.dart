// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_playground/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Settings',
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
