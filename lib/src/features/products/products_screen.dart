import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/product_categories_stubs.dart';
import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/features/products/components/cart_item.dart';
import 'package:greengrocer/src/features/home/components/home_app_bar_title.dart';
import 'package:greengrocer/src/features/products/components/products_grid.dart';
import 'package:greengrocer/src/features/products/components/search_field.dart';
import 'components/product_categories.dart';

class ProductsScreen extends StatefulWidget {
  final Function() onCartPressed;

  const ProductsScreen({super.key, required this.onCartPressed});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<String> stubCategories = productCategoriesStub;
  int selectedCategoryIndex = 0;
  int cartItemsAdded = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const HomeAppBarTitle(),
        actions: [CartItem(onCartPressed: widget.onCartPressed, cartItems: cartItemsAdded,)],
      ),
      body: Column(
        children: [
          // Campo de pesquisa
          const SearchField(),

          // Chips de categorias
          ProductCategories(
            categories: stubCategories,
            selectedCategoryIndex: selectedCategoryIndex,
            onClick: (index) {
              setState(() {
                selectedCategoryIndex = index;
              });
            },
          ),

          // Grid de produtos
          ProductsGrid(
            products: productsStubs,
            onCartPressed: () {
              setState(() {
                cartItemsAdded++;
              });
            },
          )
        ],
      ),
    );
  }
}
