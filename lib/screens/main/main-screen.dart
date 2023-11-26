import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/cart/cart_screen.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_screen.dart';
import 'package:food_delivery/theme/app_color.dart';

import 'nav_screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        currentIndex: _currentPageIndex,
        selectedItemColor: primaryColorED6E1B,
        selectedLabelStyle: const TextStyle(color: primaryColorED6E1B),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
      body: _switchPageOnIndex(_currentPageIndex),
    );
  }

  _switchPageOnIndex(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const CartScreen();
      case 2:
        return const ProfileScreen();
    }
  }
}
