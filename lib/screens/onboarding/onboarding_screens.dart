import 'package:flutter/material.dart';
import 'package:food_delivery/screens/auth/login_screen.dart';
import 'package:food_delivery/screens/main/main-screen.dart';
import 'package:food_delivery/screens/onboarding/onboarding_entity.dart';

import '../../theme/app_color.dart';
import '../../widgets/button_container_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingEntity> onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: PageView.builder(
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset('assets/word_app_logo.png'),
                const SizedBox(height: 130),
                Image.asset('assets/${onBoardingData[index].image}'),
                const SizedBox(height: 40),
                Text(
                  '${onBoardingData[index].title}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  '${onBoardingData[index].description}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: index == 0 ? primaryColorED6E1B : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: index == 1 ? primaryColorED6E1B : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: index == 2 ? primaryColorED6E1B : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                index == 2
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ButtonContainerWidget(
                            title: "Get Started",
                            hasIcon: true,
                            icon: Icons.arrow_forward_ios,
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScreen()),
                                  (route) => false);
                            }),
                      )
                    : const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
