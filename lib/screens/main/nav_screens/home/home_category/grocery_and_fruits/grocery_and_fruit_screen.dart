import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/grocery_and_fruits/widgets/build_fruite_gridview.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/grocery_and_fruits/widgets/build_kitchen_gridview.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/grocery_and_fruits/widgets/build_vegetable_gridview.dart';
import 'package:food_delivery/screens/main/nav_screens/home/widgets/icon_voice_widget.dart';
import 'package:food_delivery/theme/app_color.dart';

import '../../../../../search/search_screen.dart';
import '../../widgets/search_widget.dart';
import '../../widgets/single_category_item_widget.dart';

class GroceryAndFruitScreen extends StatefulWidget {
  const GroceryAndFruitScreen({super.key});

  @override
  State<GroceryAndFruitScreen> createState() => _GroceryAndFruitScreenState();
}

class _GroceryAndFruitScreenState extends State<GroceryAndFruitScreen> {
  int _currentSelectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        title: Image.asset('assets/word_app_logo.png'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: SearchWidget(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  }),
                ),
                const SizedBox(width: 10),
                const IconVoiceWidget(),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SingleCategoryItemWidget(
                  title: 'Fruits',
                  color: _currentSelectedCategory == 0
                      ? primaryColorED6E1B
                      : Colors.grey[300]!,
                  onTap: () {
                    setState(() {
                      _currentSelectedCategory = 0;
                    });
                  },
                ),
                SingleCategoryItemWidget(
                  title: 'Vegetables',
                  color: _currentSelectedCategory == 1
                      ? primaryColorED6E1B
                      : Colors.grey[300]!,
                  onTap: () {
                    setState(() {
                      _currentSelectedCategory = 1;
                    });
                  },
                ),
                SingleCategoryItemWidget(
                  title: 'Kitchen',
                  color: _currentSelectedCategory == 2
                      ? primaryColorED6E1B
                      : Colors.grey[300]!,
                  onTap: () {
                    setState(() {
                      _currentSelectedCategory = 2;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            _switchCategoryOnSelectedIndex(_currentSelectedCategory),
          ],
        ),
      ),
    );
  }

  _switchCategoryOnSelectedIndex(int index) {
    switch (index) {
      case 0:
        return const BuildFruitGridView();
      case 1:
        return const BuildVegetableGridView();
      case 2:
        return const BuildKitchenGridView();
    }
  }
}
