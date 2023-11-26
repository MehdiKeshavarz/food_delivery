import 'package:flutter/material.dart';

class SingleItemPremium extends StatelessWidget {
  final String? title;
  final Widget? icon;

  const SingleItemPremium({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon!,
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
