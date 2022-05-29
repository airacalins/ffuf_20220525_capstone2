// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/common.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavData = Provider.of<BottomNav>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => bottomNavData.onTap(0),
        ),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Settings',
        ),
      ),
    );
  }
}
