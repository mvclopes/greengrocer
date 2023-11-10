import 'package:greengrocer/src/domain/model/product.dart';

abstract class ProductsRepository {
  List<Product> getFakeProducts();
}