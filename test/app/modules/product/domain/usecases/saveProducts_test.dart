import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/types/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/saveProducts.dart';

class ProductRepositoryMock extends Mock implements ProductRepository {}

// TODO: improve testing with better mocks
main() {
  final repository = ProductRepositoryMock();
  final usecase = SaveProductImpl(repository);

  test('Should save a list of products', () async {
    var products = <Product>[
      Product(id: 12, name: 'name', ean: 'ean', sku: 'sku'),
      Product(id: 13, name: 'name', ean: 'ean', sku: 'sku'),
    ];

    when(() => repository.save(products)).thenAnswer((_) async => Right(true));

    final result = await usecase(products);

    expect(result, isA<Right>());
  });

  test('Should not save a empty list of products', () async {
    when(() => repository.save([])).thenAnswer((_) async => Left(NoProductsToSaveFailure()));

    final result = await usecase([]);

    expect(result, isA<Left>());
  });
}
