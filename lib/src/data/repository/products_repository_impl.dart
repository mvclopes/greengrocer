import 'package:greengrocer/src/data/stubs/product_stubs.dart';
import 'package:greengrocer/src/domain/model/product.dart';
import 'package:greengrocer/src/domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  @override
  List<Product> getFakeProducts() {
    return productsStubs;
  }
}
