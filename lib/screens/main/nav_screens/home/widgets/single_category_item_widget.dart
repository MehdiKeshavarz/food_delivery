import 'package:flutter/material.dart';
import 'package:food_delivery/theme/app_color.dart';

class SingleCategoryItemWidget extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback? onTap;

  const SingleCategoryItemWidget(
      {super.key, required this.title, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 110,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
