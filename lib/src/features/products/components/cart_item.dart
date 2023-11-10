import 'package:flutter/material.dart';
import '../../../config/color_palette.dart';

class CartItem extends StatelessWidget {
  final Function() onCartPressed;
  const CartItem({super.key, required this.onCartPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 16,
          right: 16
      ),
      child: GestureDetector(
        onTap: () => onCartPressed.call(),
        child: Badge(
          backgroundColor: ColorPalette.contrastColor,
          label: const Text('2'),
          child: Icon(
            Icons.shopping_cart,
            color: ColorPalette.swatchColor,
          ),
        ),
      ),
    );
  }
}
