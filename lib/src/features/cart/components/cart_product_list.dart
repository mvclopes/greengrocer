import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/features/cart/components/cart_tile.dart';

class CartProductList extends StatelessWidget {
  final List<CartItem> items;
  final Function(CartItem) onRemoveCallback;

  const CartProductList({
    super.key,
    required this.items,
    required this.onRemoveCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return CartTileV2(
            item: items[index],
            onRemoveCallback: onRemoveCallback,
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
