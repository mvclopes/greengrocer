import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/order_stubs.dart';

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
          return Container(
            color: Colors.red,
          );
        },
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemCount: ordersStub.length,
      ),
    );
  }
}
