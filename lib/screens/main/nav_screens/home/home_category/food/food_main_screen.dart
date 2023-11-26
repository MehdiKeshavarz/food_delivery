import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/widgets/build_popular_burger_list.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/widgets/build_popular_pizza_list.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/widgets/build_popular_sandwich_list.dart';
import '../../../../../../theme/app_color.dart';
import '../../../../../search/search_screen.dart';
import '../../widgets/icon_voice_widget.dart';
import '../../widgets/search_widget.dart';
import '../../widgets/single_category_item_widget.dart';
import 'widgets/build_special_burger_list.dart';
import 'widgets/build_special_pizza_list.dart';
import 'widgets/build_special_sandwich_list.dart';

class FoodMainScreen extends StatefulWidget {
  const FoodMainScreen({super.key});

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
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
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(

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
                  title: 'Burger',
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
                  title: 'Pizza',
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
                  title: 'Sandwich',
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
            const Text(
              "Today Special Offer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _switchSpecialCategoryOnSelectedIndex(_currentSelectedCategory),
            const SizedBox(height: 20),
            const Text(
              "Popular Now",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _switchPopularCategoryOnSelectedIndex(_currentSelectedCategory)
          ],
        ),
      ),
    );
  }

  _switchSpecialCategoryOnSelectedIndex(int index) {
    switch (index) {
      case 0:
        return const BuildSpecialBurgerList();
      case 1:
        return const BuildSpecialPizzaList();
      case 2:
        return const BuildSpecialSandwichList();
    }
  }

  _switchPopularCategoryOnSelectedIndex(int index) {
    switch (index) {
      case 0:
        return const BuildPopularBurgerList();

      case 1:
        return const BuildPopularPizzaList();

      case 2:
        return const BuildPopularSandwichList();
    }
  }
}
