import 'package:flutter/material.dart';
import 'package:food_delivery/theme/app_color.dart';

class ButtonContainerWidget extends StatelessWidget {
  final double width;
  final double height;
  final IconData? icon;
  final String title;
  final bool hasIcon;
  final VoidCallback? onTap;

  ButtonContainerWidget({
    super.key,
    this.width = double.infinity,
    this.height = 40,
    this.icon,
    required this.title,
    this.hasIcon = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: primaryColorED6E1B,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: hasIcon == true ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(color: whiteColor)),
              const SizedBox(width: 5),
              Icon(icon, color: whiteColor, size: 15),
            ],
          ):Text(title, style: const TextStyle(color: whiteColor)),
        ),
      ),
    );
  }
}
