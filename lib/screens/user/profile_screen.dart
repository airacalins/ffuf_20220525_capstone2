// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/user.dart';

class ProfileScreen extends StatelessWidget {
  User user = User(
    imageUrl: 'assets/images/avatars/avatar-1.png',
    firstName: 'Adom',
    lastName: 'Shafi',
    email: 'hellobesnik@gmail.com',
    password: 'P@sswOrd',
  );

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0),
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
                            icon: Icon(
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
                    TextStyle(
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