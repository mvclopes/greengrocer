import 'package:greengrocer/src/domain/model/product.dart';
import 'package:greengrocer/src/domain/model/product_unit.dart';

Product apple = Product(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imageUrl: 'assets/fruits/apple.png',
  name: 'Maçã',
  price: 5.5,
  unit: ProductUnit.kg,
);

Product grape = Product(
  imageUrl: 'assets/fruits/grape.png',
  name: 'Uva',
  price: 7.4,
  unit: ProductUnit.kg,
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

Product guava = Product(
  imageUrl: 'assets/fruits/guava.png',
  name: 'Goiaba',
  price: 11.5,
  unit: ProductUnit.kg,
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

Product kiwi = Product(
  imageUrl: 'assets/fruits/kiwi.png',
  name: 'Kiwi',
  price: 2.5,
  unit: ProductUnit.un,
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

Product mango = Product(
  imageUrl: 'assets/fruits/mango.png',
  name: 'Manga',
  price: 2.5,
  unit: ProductUnit.un,
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

Product papaya = Product(
  imageUrl: 'assets/fruits/papaya.png',
  name: 'Mamão papaya',
  price: 8,
  unit: ProductUnit.kg,
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

List<Product> productsStubs = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya
];
