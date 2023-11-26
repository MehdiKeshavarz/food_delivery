import 'package:flutter/material.dart';

import '../../../../../../../theme/app_color.dart';

class SelectQuntityWidget extends StatefulWidget {
  const SelectQuntityWidget({super.key});

  @override
  State<SelectQuntityWidget> createState() => _SelectQuntityWidgetState();
}

class _SelectQuntityWidgetState extends State<SelectQuntityWidget> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 130,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: lightGreyColor,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  spreadRadius: 1.5,
                  blurRadius: 5.5,
                  color: Colors.grey[400]!)
            ]),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  if (quantity > 1) {
                    setState(() {
                      quantity - 1;
                    });
                    print("--");
                  }
                },
                child: const Icon(Icons.remove_outlined)),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: primaryColorED6E1B,
                  borderRadius: BorderRadius.circular(2)),
              child: Center(
                child: Text(
                  '$quantity',
                  style: const TextStyle(fontSize: 15, color: whiteColor),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  quantity + 1;
                });
                print("++");
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
