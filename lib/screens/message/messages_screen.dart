import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Messages'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Message',
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
