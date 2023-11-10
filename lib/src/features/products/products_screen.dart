import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';

class ProductsScreen extends StatelessWidget {
  final Function() onCartPressed;

  const ProductsScreen({super.key, required this.onCartPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 30),
              children: [
                TextSpan(
                  text: "Green",
                  style: TextStyle(
                    color: ColorPalette.swatchColor,
                    fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                    text: "grocer",
                    style: TextStyle(
                        color: ColorPalette.contrastColor,
                    )
                )
              ]
            )
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              onCartPressed.call();
            },
            icon: Icon(
              Icons.shopping_cart,
              color: ColorPalette.swatchColor,
            )
          )
        ],
      ),
      body: Column(
        // Campo de pesquisa

        // Chips de categorias

        // Grid de produtos


      ),
    );
  }
}
