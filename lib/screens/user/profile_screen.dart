// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/user.dart';
import 'package:provider/provider.dart';

import '../../common/common.dart';

class ProfileScreen extends StatelessWidget {
  User user = User(
    id: 'user1',
    imageUrl: 'assets/images/avatars/avatar-1.png',
    firstName: 'Adom',
    lastName: 'Shafi',
    email: 'hellobesnik@gmail.com',
    password: 'P@sswOrd',
  );

  @override
  Widget build(BuildContext context) {
    final bottomNavData = Provider.of<BottomNav>(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => bottomNavData.onTap(0),
        ),
        centerTitle: true,
        title: const Text(
          'Profile',
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          user.imageUrl,
                        ),
                        radius: 40,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 14,
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 12,
                          child: IconButton(
                            icon: const Icon(
                              Icons.edit,
                              size: 10,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  '${user.firstName} ${user.lastName}',
                  style: textTheme.headline2!.merge(
                    const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Edit Profile',
                  style: textTheme.bodyText1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
