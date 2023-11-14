import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/features/common_widgets/quantity_item.dart';
import 'package:greengrocer/src/utils/utils.dart';

class CartTile extends StatelessWidget {
  final CartItem item;

  const CartTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              item.product.imageUrl,
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      item.product.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Utils.convertToCurrency(amount: item.product.price),
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.swatchColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            QuantityItem(
              unit: item.product.unit,
              onPressed: (qtd) {},
              quantity: item.quantity,
            )
          ],
        ),
      ),
    );
  }
}

class CartTileV2 extends StatelessWidget {
  final CartItem item;

  const CartTileV2({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Image.asset(
          item.product.imageUrl,
          fit: BoxFit.cover,
          height: 60,
          width: 60,
        ),
        title: Text(
          item.product.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          Utils.convertToCurrency(amount: item.totalPrice()),
          style: TextStyle(
              fontSize: 16,
              color: ColorPalette.swatchColor,
              fontWeight: FontWeight.bold),
        ),
        trailing: QuantityItem(
          unit: item.product.unit,
          onPressed: (qtd) {},
          quantity: item.quantity,
        ),
      ),
    );
  }
}
