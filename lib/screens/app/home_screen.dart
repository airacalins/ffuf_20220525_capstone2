// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/common/common.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final user = User(
    id: 'user1',
    imageUrl: 'assets/images/avatars/avatar-1.png',
    firstName: 'Adom',
    lastName: 'Shafi',
    email: 'hellobesnik@gmail.com',
    password: 'P@sswOrd',
  );

  @override
  Widget build(BuildContext context) {
    final drawerNav = Provider.of<DrawerNav>(context);
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        DrawerNavBar(),
        AnimatedContainer(
          transform: Matrix4.translationValues(drawerNav.xOffset, drawerNav.yOffset, 0)..scale(drawerNav.scaleFactor),
          color: ColorTheme.scaffoldBackgroundColor,
          duration: Duration(milliseconds: 250),
          child: Scaffold(
            appBar: appBar(drawerNav),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SearchTextField(),
                    SizedBox(
                      height: 15,
                    ),
                    popularJobs(textTheme),
                    SizedBox(
                      height: 15,
                    ),
                    recentPost(textTheme),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavBar(),
          ),
        ),
      ],
    );
  }

  AppBar appBar(DrawerNav drawerNav) {
    return AppBar(
      leading: drawerNav.isDrawerOpen
          ? GestureDetector(
              onTap: () => drawerNav.close(),
              child: menuButton(),
            )
          : GestureDetector(
              onTap: () => drawerNav.open(),
              child: menuButton(),
            ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              user.imageUrl,
            ),
            radius: 20.0,
          ),
        ),
      ],
    );
  }

  Container menuButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorTheme.primaryColor,
      ),
      margin: EdgeInsets.only(
        left: 15.0,
        top: 7.5,
        bottom: 7.5,
      ),
      padding: EdgeInsets.all(12.0),
      child: SvgPicture.asset('assets/icons/menu.svg'),
    );
  }

  Column popularJobs(TextTheme textTheme) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Job',
              style: textTheme.headline4,
            ),
            Text(
              'Show All',
              style: textTheme.caption,
            ),
          ],
        ),
        Container(
          height: 180,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: PopularJobList(),
        ),
      ],
    );
  }

  Column recentPost(TextTheme textTheme) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Post',
              style: textTheme.headline4,
            ),
            Text(
              'Show All',
              style: textTheme.caption,
            ),
          ],
        ),
        RecentJobPostList(),
      ],
    );
  }
}
