import 'package:greengrocer/src/domain/model/cart_item.dart';

class Order {
  String id;
  DateTime createdAt;
  DateTime expiredPixCode;
  List<CartItem> items;
  String status;
  String pixCopyPaste;
  double total;

  Order({
    required this.id,
    required this.createdAt,
    required this.expiredPixCode,
    required this.items,
    required this.status,
    required this.pixCopyPaste,
    required this.total,
  });
}
