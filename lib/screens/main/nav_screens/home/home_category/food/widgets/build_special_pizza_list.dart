import 'package:flutter/material.dart';

import '../../../../../../../data/food_prime_data.dart';
import '../food_detail_screen.dart';

class BuildSpecialPizzaList extends StatelessWidget {
  const BuildSpecialPizzaList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: PIZZA_SPECIAL_CATEGORY_LIST.map((specialPizza) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodDetailScreen(data: specialPizza)),
              );
            },
            child: SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/${specialPizza['image']}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${specialPizza['title']}",
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 3),
                            const Text(
                              "\$5 Delivery Fee 30 -40 min",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                        child: Center(
                          child: Text("${specialPizza['rating']}"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
