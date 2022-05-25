// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/form/form_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'Fill your details or continue\nwith social media',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FormTextField(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FormTextField(
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  'Forget Password?',
                  style: textTheme.caption!.merge(
                    TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('LOG IN'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('- Or Continue with -', style: Theme.of(context).textTheme.bodyText1),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/app/google.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/app/facebook.png')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New User? ',
                      style: textTheme.bodyText1,
                    ),
                    Text(
                      'Create Account',
                      style: textTheme.bodyText1!.merge(TextStyle(fontWeight: FontWeight.w600, color: Color(0xff1A1D1E))),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
