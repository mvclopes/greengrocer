import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/cart_item.dart';
import 'package:greengrocer/src/domain/model/order.dart';
import 'package:greengrocer/src/features/orders/components/order_status.dart';
import 'package:greengrocer/src/utils/utils.dart';

class OrderTile extends StatelessWidget {
  final Order order;

  const OrderTile({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            "Pedido: ${order.id}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            Utils.formatDateTime(order.createdAt),
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView(
                      children: order.items.map((item) {
                        return _OrderItem(cartItem: item);
                      }).toList(),
                    ),
                  ),

                  VerticalDivider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                    width: 12,
                  ),

                  Expanded(
                    flex: 2,
                    child: OrderStatus(
                      status: order.status,
                      isExpiredPixCode: order.expiredPixCode.isBefore(DateTime.now()),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OrderItem extends StatelessWidget {
  final CartItem cartItem;

  const _OrderItem({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            "${cartItem.quantity} ${cartItem.product.unit.name}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                cartItem.product.name,
              ),
            ),
          ),
          Text(
            Utils.convertToCurrency(amount: cartItem.product.price),
          ),
        ],
      ),
    );
  }
}
