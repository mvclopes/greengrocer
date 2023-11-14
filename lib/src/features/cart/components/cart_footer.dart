import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';
import 'package:greengrocer/src/utils/utils.dart';

class CartFooter extends StatelessWidget {
  final double totalAmount;
  final VoidCallback onConfirmed;
  const CartFooter({super.key, required this.totalAmount, required this.onConfirmed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Total geral",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            Utils.convertToCurrency(amount: totalAmount),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorPalette.swatchColor,
            ),
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () => onConfirmed(),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorPalette.swatchColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                "Concluir pedido",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
