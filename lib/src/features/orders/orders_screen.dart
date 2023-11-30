import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/order_stubs.dart';
import 'package:greengrocer/src/features/orders/components/order_tile.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedidos"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return OrderTile(
            order: ordersStub[index],
          );
        },
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemCount: ordersStub.length,
      ),
    );
  }
}
