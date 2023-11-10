import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/products/components/category_tile.dart';

class ProductCategories extends StatelessWidget {
  final List<String> categories;
  final int selectedCategoryIndex;
  final Function(int) onClick;

  const ProductCategories({
    super.key,
    required this.categories,
    required this.selectedCategoryIndex,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) =>
              CategoryTile(
                index: index,
                category: categories[index],
                isSelected: index == selectedCategoryIndex,
                onClick: onClick,
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: categories.length
      ),
    );
  }
}
