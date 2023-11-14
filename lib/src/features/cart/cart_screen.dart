import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/features/cart/components/cart_footer.dart';
import 'package:greengrocer/src/features/cart/components/cart_tile.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  List<CartItem> items = cartStub;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: Column(
        children: [
          // Product list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return CartTile(item: items[index]);
              },
              itemCount: items.length,
            ),
          ),

          // Footer
          CartFooter(totalAmount: 99.99)
        ],
      ),
    );
  }
}
