import 'package:flutter/material.dart';
import 'package:food_delivery/screens/auth/sign_up_screen.dart';
import 'package:food_delivery/screens/premium/premium_screen.dart';
import 'package:food_delivery/theme/app_color.dart';
import 'package:food_delivery/widgets/button_container_widget.dart';
import 'package:food_delivery/widgets/form_container_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              'Login',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Email or Username'),
            const SizedBox(height: 20),
            const FormContainerWidget(hintText: 'Password'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    const Text(
                      'Remember me',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 16, color: primaryColorED6E1B),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            ButtonContainerWidget(
              title: "Log In",
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PremiumScreen()),
                    (route) => false);
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('or'),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/google_logo.png'),
                Image.asset('assets/facebook_logo.png'),
                Image.asset('assets/linkedin_logo.png'),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    " Create Account",
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
