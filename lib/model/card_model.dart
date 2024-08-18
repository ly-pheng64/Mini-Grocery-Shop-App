import 'package:flutter/material.dart';

// ignore: camel_case_types
class card_modle extends ChangeNotifier {
  final List _shopitem = [
    ["egg", "0.60", "lib/images/egg.png", Colors.yellow],
    ["Apple", "0.60", "lib/images/apple.png", Colors.red],
    ["Orange", "0.60", "lib/images/orange.png", Colors.orange],
    ["chicken", "0.60", "lib/images/chicken.png", Colors.brown],
    ["Banana", "0.60", "lib/images/banana.png", Colors.yellow],
    ["Pig", "0.60", "lib/images/pig.png", Colors.pink],
    ["Fish", "0.60", "lib/images/fish.png", Colors.blue],
    ["Cow", "0.60", "lib/images/cow.png", Colors.brown],
  ];

  List _cartpage = [];

  get shopitem => _shopitem;

  get CartPage => _cartpage;

  void add_to_cart(int index) {
    _cartpage.add(_shopitem[index]);
    notifyListeners();
  }

  void remove(int index) {
    _cartpage.removeAt(index);
    notifyListeners();
  }

  String calculatetotal() {
    double total = 0;
    for (int i = 0; i < _cartpage.length; i++) {
      total += double.parse(_cartpage[i][1]);
    }
    return total.toStringAsFixed(2);
  }
}
