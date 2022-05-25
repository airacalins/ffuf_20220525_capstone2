// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ApplicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Applications'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              'Your Applications',
              style: textTheme.headline3!.merge(TextStyle(
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
          // ListView.builder(
          //   itemCount: 1,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ;
          //   },
          // ),
        ],
      ),
    );
  }
}
