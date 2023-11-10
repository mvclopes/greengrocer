import 'package:greengrocer/src/domain/model/product_unit.dart';

class Product {
  String name;
  String imageUrl;
  ProductUnit unit;
  double price;
  String description;

  Product({
    required this.name,
    required this.imageUrl,
    required this.unit,
    required this.price,
    required this.description
  });
}