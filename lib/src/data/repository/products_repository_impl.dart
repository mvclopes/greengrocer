import 'package:greengrocer/src/domain/model/product.dart';
import '../../domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  @override
  List<Product> getFakeProducts() {
    return [];
  }
}
