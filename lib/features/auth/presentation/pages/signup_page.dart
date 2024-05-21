import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const AuthField(hintText: 'Name'),
            const SizedBox(
              height: 15,
            ),
            const AuthField(hintText: 'Email'),
            const SizedBox(
              height: 15,
            ),
            const AuthField(hintText: 'Password'),
            const SizedBox(
              height: 15,
            ),
            const AuthButton(),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  text: 'Don\'t Have an Account? ',
                  style: Theme.of(context).textTheme.titleSmall,
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppPallete.gradient3,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
