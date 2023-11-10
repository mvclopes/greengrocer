import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/product.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products;

  const ProductsGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 9 / 11.5
        ),
        itemCount: products.length,
        itemBuilder: (_, index) {
          return Container(color: Colors.red,);
        },
      ),
    );
  }
}
