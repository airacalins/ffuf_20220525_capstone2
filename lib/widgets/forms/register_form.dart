import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FormTextField(
            hintText: 'Email',
            prefixIcon: Icons.person_outlined,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FormTextField(
            hintText: 'Username',
            prefixIcon: Icons.email_outlined,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FormTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock_outline,
            suffixIcon: Icons.remove_red_eye_outlined,
          ),
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
