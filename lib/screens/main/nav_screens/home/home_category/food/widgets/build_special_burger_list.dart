import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/food_detail_screen.dart';

import '../../../../../../../data/food_prime_data.dart';

class BuildSpecialBurgerList extends StatelessWidget {
  const BuildSpecialBurgerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: BURGER_SPECIAL_CATEGORY_LIST.map((specialBurger) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FoodDetailScreen(data: specialBurger)),
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
                      'assets/${specialBurger['image']}',
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
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${specialBurger['title']}",
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
                          child: Text("${specialBurger['rating']}"),
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
