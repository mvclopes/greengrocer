import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/features/cart/components/cart_footer.dart';
import 'package:greengrocer/src/features/cart/components/cart_product_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> itemsStub = cartStub;
  double cartTotalPrice = 0;

  void _remoteItemFromCart(CartItem item) {
    setState(() {
      itemsStub.remove(item);
    });
  }

  double _cartTotalPrice() {
    double total = 0;
    for (var e in itemsStub) {
      total += e.totalPrice();
    }
    return total;
  }

  Future<bool?> _showOrderConfirmation() {
    return showDialog<bool>(
      barrierDismissible: false,
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text("Confirmação"),
          content: const Text("Deseja realmente concluir o pedido?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Nao"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Sim"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: Column(
        children: [
          // Product list
          CartProductList(
            items: itemsStub,
            onRemoveCallback: (item) => _remoteItemFromCart(item),
          ),

          // Footer
          CartFooter(
            totalAmount: _cartTotalPrice(),
            onConfirmed: () async {
              bool? decision = await _showOrderConfirmation();
            },
          )
        ],
      ),
    );
  }
}
