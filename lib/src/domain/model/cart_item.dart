import 'package:greengrocer/src/domain/model/product.dart';

class CartItem {
  Product product;
  int quantity;

  CartItem({
    required this.product,
    required this.quantity,
  });

  double totalPrice() => product.price * quantity;
}
