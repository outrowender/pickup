import 'package:pickup/app/modules/product/data/factories/ProductFactory.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';
import 'package:pickup/app/modules/product/domain/usecases/saveProducts/SaveProductsUsecase.dart';
import 'package:pickup/types/Either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';

class ProductRepositoryMock extends Mock implements IProductRepository {}

// TODO: improve testing with better mocks
main() {
  final repository = ProductRepositoryMock();
  final usecase = SaveProducts(repository);
  final productFactory = ProductFactory();

  test('Should save a list of products', () async {
    var products = productFactory.createList(2);

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
