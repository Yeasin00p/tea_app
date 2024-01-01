import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_app/components/tea_tile.dart';
import 'package:tea_app/model/tea.dart';
import 'package:tea_app/model/tea_shop.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
  void addToCart(Tea tea) {
    Provider.of<TeaShop>(context, listen: false).addItemToCart(tea);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully Added To Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'How Would You Like Your Tea',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.teaShop.length,
                  itemBuilder: (context, index) {
                    Tea eachTea = value.teaShop[index];
                    return TeaTile(
                      tea: eachTea,
                      onPressed: () => addToCart(eachTea),
                      icon: const Icon(Icons.add),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
