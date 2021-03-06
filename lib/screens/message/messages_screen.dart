import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNav>(context);
    final drawerNav = Provider.of<DrawerNav>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(RouteManager.homeScreen);
            drawerNav.close();
            bottomNav.homeScreen();
          },
        ),
        title: const Text('Messages'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: MessageList(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
