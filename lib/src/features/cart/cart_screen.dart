import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/features/cart/components/cart_footer.dart';
import 'package:greengrocer/src/features/cart/components/cart_product_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: Column(
        children: [
          // Product list
          CartProductList(items: cartStub),

          // Footer
          CartFooter(totalAmount: 99.99)
        ],
      ),
    );
  }
}
