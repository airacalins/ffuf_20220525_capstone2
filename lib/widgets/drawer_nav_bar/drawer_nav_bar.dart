import 'package:flutter/material.dart';
import 'package:flutter_playground/models/models.dart';

class DrawerNavBar extends StatelessWidget {
  const DrawerNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    User user = User(
      id: 'user1',
      imageUrl: 'assets/images/avatars/avatar-1.png',
      firstName: 'Adom',
      lastName: 'Shafi',
      email: 'hellobesnik@gmail.com',
      password: 'P@sswOrd',
    );

    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 70,
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(user, textTheme),
                const SizedBox(
                  height: 15,
                ),
                menu(textTheme),
              ],
            ),
            menuItem(
              const Color(0xfff9454c),
              Icons.exit_to_app,
              'Logout',
              textTheme,
            ),
          ],
        ),
      ),
    );
  }

  Column header(User user, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(user.imageUrl),
          radius: 40.0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${user.firstName} ${user.lastName}',
          style: textTheme.headline2,
        ),
        Text(user.email)
      ],
    );
  }

  Column menu(TextTheme textTheme) {
    return Column(
      children: [
        menuItem(
          const Color(0xfffa5441),
          Icons.person,
          'Edit Profile',
          textTheme,
        ),
        menuItem(
          const Color(0xfffb9087),
          Icons.watch_later,
          'Applications',
          textTheme,
        ),
        menuItem(
          const Color(0xff2cb9b5),
          Icons.settings,
          'Notification Settings',
          textTheme,
        ),
        menuItem(
          const Color(0xfff933c0),
          Icons.favorite,
          'Share App',
          textTheme,
        ),
      ],
    );
  }

  Container menuItem(Color bgColor, IconData icon, String title, TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: bgColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: textTheme.bodyText1!.merge(const TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
