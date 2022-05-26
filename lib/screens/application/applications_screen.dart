// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ApplicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Applications'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              'Your Applications',
              style: textTheme.headline3!.merge(const TextStyle(
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
