import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/food_main_screen.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/grocery_and_fruits/grocery_and_fruit_screen.dart';
import 'package:food_delivery/screens/main/nav_screens/home/widgets/home_category_item_widget.dart';
import 'package:food_delivery/theme/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          children: [
            HomeCategoryItemWidget(
              title: 'Grocery & Fruits',
              description: 'Order fresh vegetables & fruits anytime, anywhere.',
              image: 'assets/home_image_1.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GroceryAndFruitScreen()),
                );
              },
            ),
            const SizedBox(height: 12),
            HomeCategoryItemWidget(
              title: 'Food',
              description:
                  'Order from your favorite restaurants and home chefs.',
              image: 'assets/home_image_2.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FoodMainScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
