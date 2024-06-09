import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';

import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
   static route() => MaterialPageRoute(
        builder: (context) => LoginPage(),
      );
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState!.validate();
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: 'Password',
              controller: passwordController,
              isObscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            const AuthButton(buttonText: "Sign in"),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  SignupPage.route(),
                );
              },
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t Have an Account? ',
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppPallete.gradient3,
                                  fontWeight: FontWeight.bold,
                                ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
