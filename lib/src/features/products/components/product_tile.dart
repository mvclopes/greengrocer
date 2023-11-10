import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';
import 'package:greengrocer/src/domain/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image(image: )
            Expanded(child: Image.asset(product.imageUrl)),
            Text(
              product.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  product.price.toString(),
                  style: TextStyle(
                      color: ColorPalette.swatchColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " /${product.unit.name}",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
