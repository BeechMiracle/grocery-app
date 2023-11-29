import 'package:flutter/material.dart';
import 'package:grocery_shop/models/item_model.dart';

class GroceryTile extends StatelessWidget {
  const GroceryTile({
    super.key,
    required this.shopItem,
    this.onPressed,
  });

  final ShopItem shopItem;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: shopItem.color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //image
          Image.asset(
            shopItem.imagePath,
            height: 64,
          ),

          // item name
          Text(
            shopItem.itemName,
          ),

          //item price + button
          MaterialButton(
            onPressed: onPressed,
            color: shopItem.color,
            child: Text(
              '\$ ${shopItem.itemPrice}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
