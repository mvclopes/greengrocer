import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';
import 'package:greengrocer/src/domain/model/product_unit.dart';

class QuantityItem extends StatelessWidget {
  final ProductUnit unit;
  final int quantity;
  final Function(int) onPressed;

  const QuantityItem({
    super.key,
    required this.unit,
    required this.onPressed,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 2,
            )
          ]),
      child: Row(
        children: [
          _QuantityButton(
            icon: Icons.remove,
            onTap: () {
              if (quantity == 1) return ;
              int result = quantity - 1;
              onPressed(result);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "$quantity ${unit.name}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _QuantityButton(
            icon: Icons.add,
            backgroundColor: ColorPalette.swatchColor,
            onTap: () => onPressed(quantity + 1),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor;

  const _QuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(60),
        onTap: () => onTap.call(),
        child: Ink(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
