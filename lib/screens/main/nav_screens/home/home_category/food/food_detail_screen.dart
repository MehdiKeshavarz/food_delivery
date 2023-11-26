import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/widgets/bottom_nav_widget.dart';

import '../../../../../../theme/app_color.dart';
import 'widgets/select_quntity_widget.dart';

class FoodDetailScreen extends StatefulWidget {
  final Map<String, String> data;

  const FoodDetailScreen({super.key, required this.data});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavWidget(),
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.25,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: Image.asset(
                "assets/${widget.data['image']}",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 15),
            const SelectQuntityWidget(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.data['title']}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("${widget.data['rating']}")
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text("Chicken breast, french fries, baked potato wedges."),
            const SizedBox(height: 15),
            const Row(
              children: [
                Icon(Icons.calendar_today, color: primaryColorED6E1B),
                SizedBox(
                  width: 10,
                ),
                Text("FREE delivery Sunday, October 23 2.00 PM")
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Icon(Icons.location_on, color: primaryColorED6E1B),
                SizedBox(
                  width: 10,
                ),
                Text("Deliver to New York 10001")
              ],
            )
          ],
        ),
      ),
    );
  }
}
