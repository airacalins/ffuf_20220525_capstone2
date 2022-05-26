// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FormTextField(
          hintText: 'Email',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/icons/email.svg',
              height: 5,
            ),
          ),
        ),
        const FormTextField(
          hintText: 'Username',
          prefixIcon: Icon(Icons.person_outline),
        ),
        FormTextField(
          hintText: 'Password',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset('assets/icons/lock.svg'),
          ),
          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('SIGN UP'),
          ),
        ),
      ],
    );
  }
}
