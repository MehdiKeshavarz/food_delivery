import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/profile/widgets/item_setting_widget.dart';
import 'package:food_delivery/theme/app_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Image.asset('assets/word_app_logo.png'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.black)),
          const SizedBox(width: 7),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/user_profile.png'),
                const SizedBox(width: 10),
                const Text(
                  'John Smite',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: 1,
              margin: const EdgeInsets.only(top: 7),
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            const ItemSettingWidget(
              titleSetting: 'Language',
              icon: Icons.language,
            ),
            const ItemSettingWidget(titleSetting: 'Help', icon: Icons.help),
            const ItemSettingWidget(
              titleSetting: 'Theme',
              icon: Icons.light_mode_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
