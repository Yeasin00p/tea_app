import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_app/components/tea_tile.dart';
import 'package:tea_app/model/tea.dart';
import 'package:tea_app/model/tea_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Tea tea) {
    Provider.of<TeaShop>(context, listen: false).removeItemToCart(tea);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<TeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'Your Cart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Tea eachTea = value.userCart[index];
                    return TeaTile(
                      tea: eachTea,
                      onPressed: () => removeFromCart(eachTea),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap:  payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Pay Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
