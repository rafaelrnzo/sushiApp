// import 'dart:html';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/screen/home/homepage.dart';
import 'package:rent_app/screen/home/widgets/bannerHome.dart';
import 'package:sizer/sizer.dart';
import 'package:rent_app/services/carsList.dart';

List<String> tabMenus = [
  'Appetizer',
  'Sashimi',
  'Gunkan',
  'Makimono',
  'Nigiri',
  'Rice & Noodle',
  'Fried',
  'Grill',
  'Bento',
  'Dessert',
  'Drink'
];

// List<Food> filteredfoods = foods.where((food) {
//   return food.name.toLowerCase().contains(searchString.toLowerCase());
// }).toList();

class ScrollableTabBarExample extends StatefulWidget {
  @override
  State<ScrollableTabBarExample> createState() =>
      _ScrollableTabBarExampleState();
}

class _ScrollableTabBarExampleState extends State<ScrollableTabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Menu',
            style: TextStyle(color: secondary),
          ),
          bottom: TabBar(
            indicatorColor: primary,
            isScrollable: true,
            tabs: tabMenus.map((title) => MenuTab(title: title)).toList(),
          ),
        ),
        body: TabBarView(
            children: tabMenus
                .map(
                  (title) => Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Text(
                                '${title}',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: secondary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                      Expanded(
                          child: GridView(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0,
                              ),
                              children: foods
                                  .map(
                                    (item) => CardFood(
                                      name: item.name,
                                      price: item.price,
                                      image: item.img,
                                      count: 1,
                                    ),
                                  )
                                  .toList()))
                    ],
                  ),
                )
                .toList()),
      ),
    );
  }
}

class MenuTab extends StatelessWidget {
  const MenuTab({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        "${title}",
        style: TextStyle(color: secondary),
      ),
    );
  }
}
