import 'package:flutter/material.dart';
import 'package:food_delivery/theme/app_color.dart';

import '../../../../../../../data/food_prime_data.dart';
import '../grocery_and_fruit_detail_screen.dart';

class BuildFruitGridView extends StatelessWidget {
  const BuildFruitGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        children: FRUIT_CATEGORY_LIST.map((fruit) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        GroceryAndFruitDetailScreen(data: fruit)),
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
                      Image.asset('assets/${fruit['image']}',
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
                              "${fruit['price']}",
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
                  "${fruit['title']}",
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
