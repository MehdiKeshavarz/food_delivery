import 'package:flutter/material.dart';
import 'package:food_delivery/screens/auth/login_screen.dart';

import '../../theme/app_color.dart';
import '../../widgets/button_container_widget.dart';
import '../../widgets/form_container_widget.dart';
import '../premium/premium_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _rememberMyCheckValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 140),
            const Text(
              'Sing Up',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Username'),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Email'),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Password'),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Password confirm'),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  onChanged: (value) {
                    setState(() {
                      _rememberMyCheckValue = value!;
                    });
                  },
                  value: _rememberMyCheckValue,
                ),
                Expanded(
                  child: RichText(
                    maxLines: 2,
                    text: const TextSpan(
                      text: "By signing up you accept the ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Team of service ",
                          style: TextStyle(color: primaryColorED6E1B),
                        ),
                        TextSpan(
                          text: "and ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(color: primaryColorED6E1B),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            ButtonContainerWidget(
              title: "Sing Up",
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PremiumScreen()),
                    (route) => false);
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    " Login",
                    style: TextStyle(fontSize: 15, color: primaryColorED6E1B),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
