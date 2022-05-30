// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/widgets/widgets.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/themes/themes.dart';

class ApplicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final applications = Provider.of<Applications>(context).applications;
    final drawerNav = Provider.of<DrawerNav>(context);
    final bottomNavData = Provider.of<BottomNav>(context);

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(RouteManager.homeScreen);
            drawerNav.open();
            bottomNavData.homeScreenIndex();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text('Applications'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Your Applications',
              style: textTheme.headline3!.merge(const TextStyle(
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
          Expanded(
            child: ApplicationList(applications: applications),
          ),
        ],
      ),
    );
  }
}
