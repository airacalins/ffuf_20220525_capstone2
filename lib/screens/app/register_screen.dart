import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register Account',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Fill your details or continue\nwith social media',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: FormTextField(
                      hintText: 'Email',
                      prefixIcon: const Icon(
                        Icons.person_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: FormTextField(
                      hintText: 'Username',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: FormTextField(
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
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
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '- Or Continue with -',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SocialMediaLoginLoginGroup(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have an Account? ',
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        'Log In',
                        style: textTheme.bodyText1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1A1D1E),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
