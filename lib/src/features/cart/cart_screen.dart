import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/cart/components/cart_footer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: const Column(
        children: [
          // Product list
          Expanded(
            child: Placeholder(),
          ),

          // Footer
          CartFooter(totalAmount: 99.99)
        ],
      ),
    );
  }
}
