import 'package:flutter/material.dart';

import '../../../../../theme/app_color.dart';

class IconVoiceWidget extends StatelessWidget {
  const IconVoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: primaryColorED6E1B,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.settings_voice,
        color: whiteColor,
      ),
    );
  }
}
