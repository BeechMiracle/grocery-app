import 'package:flutter/material.dart';
import 'package:grocery_shop/models/item_model.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List<ShopItem> _shopItem = [
    ShopItem(
      itemName: 'Avocado',
      itemPrice: '5.00',
      imagePath: 'images/avocado.png',
      color: Colors.lightGreen,
    ),
    ShopItem(
      itemName: 'Banana',
      itemPrice: '5.00',
      imagePath: 'images/banana.png',
      color: Colors.amber,
    ),
    ShopItem(
      itemName: 'Pineapple',
      itemPrice: '5.00',
      imagePath: 'images/pineapple.png',
      color: Colors.yellowAccent,
    ),
    ShopItem(
      itemName: 'Apple',
      itemPrice: '5.00',
      imagePath: 'images/apple_fruit.png',
      color: Colors.redAccent,
    ),
  ];

  List<ShopItem> get shopItems => _shopItem;

  // list of cart items
  List<ShopItem> _cartItems = [];

  List<ShopItem> get cartItems => _cartItems;

  // add item to cart
  void addToCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String totalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i].itemPrice);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
