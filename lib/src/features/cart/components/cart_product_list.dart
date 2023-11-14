import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/features/cart/components/cart_tile.dart';

class CartProductList extends StatelessWidget {
  final List<CartItem> items;
  const CartProductList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return CartTile(item: items[index]);
        },
        itemCount: items.length,
      ),
    );
  }
}
