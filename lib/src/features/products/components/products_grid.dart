import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/product.dart';
import 'package:greengrocer/src/features/product_detail/product_detail_screen.dart';
import 'package:greengrocer/src/features/products/components/product_tile.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products;
  final VoidCallback onCartPressed;

  const ProductsGrid({
    super.key,
    required this.products,
    required this.onCartPressed
  });

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
          childAspectRatio: 9 / 11.5,
        ),
        itemCount: products.length,
        itemBuilder: (_, index) {
          return ProductTile(
            product: products[index],
            onCartPressed: onCartPressed,
            onProductPressed: (product) {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return ProductDetailScreen(
                  product: products[index],
                );
              }));
            },
          );
        },
      ),
    );
  }
}
