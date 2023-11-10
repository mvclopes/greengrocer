import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';

class CategoryTile extends StatelessWidget {
  final int index;
  final String category;
  final bool isSelected;
  final Function(int) onClick;

  const CategoryTile({
    super.key,
    required this.index,
    required this.category,
    required this.isSelected,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick.call(index),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? ColorPalette.swatchColor : Colors.transparent,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
                category,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.white : ColorPalette.contrastColor
              ),
            ),
          ),
        ),
      ),
    );
  }
}
