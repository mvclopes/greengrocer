import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/products/components/cart_item.dart';
import 'package:greengrocer/src/features/products/components/home_app_bar_title.dart';

class ProductsScreen extends StatelessWidget {
  final Function() onCartPressed;

  const ProductsScreen({super.key, required this.onCartPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const HomeAppBarTitle(),
        actions: [
          CartItem(onCartPressed: onCartPressed)
        ],
      ),
      body: Column(
        // Campo de pesquisa

        // Chips de categorias

        // Grid de produtos


      ),
    );
  }
}
