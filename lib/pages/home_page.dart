import 'package:flutter/material.dart';
import 'package:tea_app/components/bottom_nav_bar.dart';
import 'package:tea_app/const.dart';
import 'package:tea_app/pages/cart_page.dart';
import 'package:tea_app/pages/shope_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopePage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
      onTabChange: (index ) =>navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
