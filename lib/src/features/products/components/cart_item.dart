import 'package:flutter/material.dart';
import '../../../config/color_palette.dart';

class CartItem extends StatelessWidget {
  final Function() onCartPressed;
  final int cartItems;
  const CartItem({
    super.key,
    required this.onCartPressed,
    this.cartItems = 0
  });

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
          isLabelVisible: cartItems != 0,
          backgroundColor: ColorPalette.contrastColor,
          label: Text(cartItems.toString()),
          child: Icon(
            Icons.shopping_cart,
            color: ColorPalette.swatchColor,
          ),
        ),
      ),
    );
  }
}
