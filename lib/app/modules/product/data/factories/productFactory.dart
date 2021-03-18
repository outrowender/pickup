import 'package:faker/faker.dart';
import 'package:pickup/app/modules/product/data/models/productModel.dart';

class ProductFactory {
  final faker = new Faker();

  List<ProductModel> createList(int count) {
    return List.filled(
      count,
      ProductModel(
        id: faker.randomGenerator.integer(1000),
        ean: faker.randomGenerator.string(32),
        sku: faker.randomGenerator.string(32),
        name: faker.lorem.word(),
      ),
    );
  }
}
