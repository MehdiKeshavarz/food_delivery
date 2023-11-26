import 'package:flutter/material.dart';

import '../../../../../../../data/food_prime_data.dart';
import '../../../../../../../theme/app_color.dart';
import '../grocery_and_fruit_detail_screen.dart';

class BuildKitchenGridView extends StatelessWidget {
  const BuildKitchenGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        children: KITCHEN_CATEGORY_LIST.map((kitchen) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        GroceryAndFruitDetailScreen(data: kitchen)),
              );
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/${kitchen['image']}',
                          fit: BoxFit.cover),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: redColor,
                          ),
                          child: Center(
                            child: Text(
                              "${kitchen['price']}",
                              style: const TextStyle(
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "${kitchen['title']}",
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
