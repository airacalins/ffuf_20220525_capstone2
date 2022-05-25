import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Image(
          image: AssetImage(
            'assets/images/app/logo.png',
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage(
                  'assets/images/app/splash-screen-pic.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Find a Perfect\nJob Match',
                    textAlign: TextAlign.center,
                    style: textTheme.headline1,
                  ),
                  Text(
                    'Finding your dream job is more easier\nand faster with JobHub',
                    style: textTheme.bodyText1,
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
      ),
    );
  }
}
