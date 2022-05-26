import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FormTextField(
            hintText: 'Email',
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
        Text(
          'Forget Password?',
          style: textTheme.caption!.merge(
            const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('LOG IN'),
          ),
        ),
      ],
    );
  }
}
