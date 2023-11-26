import 'package:flutter/material.dart';
import 'package:food_delivery/screens/premium/widgets/single_item_premium.dart';

import 'package:food_delivery/theme/app_color.dart';
import 'package:food_delivery/widgets/button_container_widget.dart';

import '../main/main-screen.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Center(child: Image.asset('assets/word_app_logo.png')),
                const SizedBox(height: 30),
                const Text(
                  "The best of your\nneighbourhood,\ndelivered for less.",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const SingleItemPremium(
                  title: "Save an average of \$4 to 5 per order.",
                  icon: Icon(
                    Icons.food_bank,
                    color: primaryColorED6E1B,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleItemPremium(
                  title:
                      "Look for FoodPrime logo to find\n1k eligible restaurants.",
                  icon: Icon(
                    Icons.restaurant,
                    color: primaryColorED6E1B,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleItemPremium(
                  title:
                      "Enjoy zero delivery fees and reduced\nservice fees on order \$12.",
                  icon: Icon(
                    Icons.shopping_cart,
                    color: primaryColorED6E1B,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleItemPremium(
                  title:
                      "Free 1 month trial, \$9.99 monthly\nafter, easily cancel anything.",
                  icon: Icon(
                    Icons.calendar_today,
                    color: primaryColorED6E1B,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                ButtonContainerWidget(title: "Try FoodPrime free for 1 month"),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MainScreen()),
                            (route) => false);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "By tapping the button, I agree to the ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text: "Teams",
                            style: TextStyle(color: primaryColorED6E1B)),
                        TextSpan(
                            text:
                                "and an automatic monthly charge of \$9.99 until I ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "cancel. ",
                            style: TextStyle(color: primaryColorED6E1B)),
                        TextSpan(
                            text:
                                "Cancel in account prior to any renewal to avoid charges.",
                            style: TextStyle(color: Colors.black)),
                      ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
