import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'package:pickup/app/modules/product/domain/usecases/saveProducts/SaveProducts.dart';
import 'package:pickup/types/Either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';

class ProductRepositoryMock extends Mock implements IProductRepository {}

// TODO: improve testing with better mocks
main() {
  final repository = ProductRepositoryMock();
  final usecase = SaveProducts(repository);

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
