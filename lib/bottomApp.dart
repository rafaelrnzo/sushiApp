// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/screen/home/homepage.dart';
import 'package:rent_app/screen/menu/menuPage.dart';
import 'package:rent_app/screen/order/orderPage.dart';

class BottomApp extends StatefulWidget {
  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ScrollableTabBarExample(),
    OrderPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Order',
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
