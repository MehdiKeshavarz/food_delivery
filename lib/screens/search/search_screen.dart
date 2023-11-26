import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/nav_screens/home/home_category/food/food_detail_screen.dart';
import 'package:food_delivery/screens/main/nav_screens/home/widgets/search_widget.dart';

import '../../data/food_prime_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  void initState() {
    searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var filterData = SEARCH_FOOD_PRIME_DATA
        .where((element) =>
            element['title']!.contains(searchController.text) ||
            element['title']!
                .toLowerCase()
                .contains(searchController.text.toLowerCase()))
        .toList();
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SearchWidget(controller: searchController),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              searchController.text.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: filterData
                          .map((searchData) => _searchItemWidget(searchData))
                          .toList(),
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchItemWidget(Map<String, String> data) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => FoodDetailScreen(data: data)));
          },
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data['title']}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                        "Greek style pizza, new england style,pizza dough, feta cheese"),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "\$13",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset("assets/${data['image']}"),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(width: double.infinity, height: 1, color: Colors.grey[350]),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
