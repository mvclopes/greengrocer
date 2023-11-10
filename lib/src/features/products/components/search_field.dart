import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: Colors.white,
          hintText: "Pesquise aqui...",
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          prefixIcon: Icon(
            Icons.search,
            color: ColorPalette.contrastColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
