import 'package:flutter/material.dart';

import '../../../../../theme/app_color.dart';

class HomeCategoryItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onTap;

  const HomeCategoryItemWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.20,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 1),
                spreadRadius: 1.5,
                blurRadius: 5.5,
                color: Colors.grey[350]!,
              ),
            ]),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text(description,
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[700])),
                  ],
                ),
              ),
              Image.asset(image)
            ],
          ),
        ),
      ),
    );
  }
}
