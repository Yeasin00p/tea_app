import 'package:flutter/material.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Shope Page'),),);
  }
}