import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('assets/images/app/logo.png'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            flex: 2,
            child: Image(
              image: AssetImage('assets/images/app/splash-screen-pic.png'),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Find a Perfect\nJob Match',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Finding your dream job is more easire\nand faster with JobHub',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Let\'s Get Started',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
