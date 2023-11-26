import 'package:flutter/material.dart';

import '../../../../../../../theme/app_color.dart';
import '../../../../../../../widgets/button_container_widget.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, -2),
                color: Colors.grey[300]!,
                spreadRadius: 1.5,
                blurRadius: 10)
          ]),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Total\$123",
              style: TextStyle(fontSize: 16),
            ),
            ButtonContainerWidget(
              width: 150,
              height: 40,
              title: "Add to cart",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Item added in cart")));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
