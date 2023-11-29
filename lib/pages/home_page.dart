import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/models/cart_model.dart';
import 'package:grocery_shop/pages/cart_page.dart';
import 'package:grocery_shop/utils/grocery_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),

              // good morning
              const Text(
                'Good morning,',
              ),

              const SizedBox(
                height: 8,
              ),

              // let's order fresh items for you
              Text(
                'Let\'s order fresh items for you',
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // divider
              const Divider(),

              const SizedBox(
                height: 24,
              ),

              // fresh items + grid
              const Text(
                'Fresh Items',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              Expanded(
                child: Consumer<CartModel>(
                  builder: (context, value, child) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1 / 1.3,
                      ),
                      itemCount: value.shopItems.length,
                      itemBuilder: (context, index) => GroceryTile(
                        shopItem: value.shopItems[index],
                        onPressed: () =>
                            Provider.of<CartModel>(context, listen: false)
                                .addToCart(index),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
    );
  }
}
