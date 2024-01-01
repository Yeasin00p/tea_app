import 'package:flutter/widgets.dart';
import 'package:tea_app/model/tea.dart';

class TeaShop extends ChangeNotifier {
  final List<Tea> _shop = [
    Tea(
      name: 'bubble_tea',
      price: '20 Tk',
      imagePath: 'assets/images/bubble-tea.png',
    ),
    Tea(
      name: 'chocolate',
      price: '20 Tk',
      imagePath: 'assets/images/chocolate.png',
    ),
    Tea(
      name: 'matcha-latte',
      price: '20 Tk',
      imagePath: 'assets/images/matcha-latte.png',
    ),
  ];
  final List<Tea> _userCart = [];
  List<Tea> get teaShop => _shop;
  List<Tea> get userCart => _userCart;
  void addItemToCart(Tea tea) {
    _userCart.add(tea);
    notifyListeners();
  }

  void removeItemToCart(Tea tea) {
    _userCart.remove(tea);
    notifyListeners();
  }
}
