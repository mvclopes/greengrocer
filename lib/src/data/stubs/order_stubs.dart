import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/domain/model/order.dart';

List<Order> ordersStub = [
  Order(
      pixCopyPaste: "q1w2e3r4t5y6",
      createdAt: DateTime.parse('2021-06-08 10:00:10:458'),
      expiredPixCode: DateTime.parse('2021-06-08 11:00:10:458'),
      id: "231saqdwqdacni321dsac",
      status: "pending_payment",
      total: 11,
      items: [
        CartItem(
          product: apple,
          quantity: 2,
        ),
      ])
];
