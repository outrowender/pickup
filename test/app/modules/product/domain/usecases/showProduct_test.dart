import 'package:flutter_test/flutter_test.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'package:pickup/types/Either.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/showProduct/ShowProduct.dart';

class ProductRepositoryMock extends Mock implements IProductRepository {}

final repository = ProductRepositoryMock();
final usecase = ShowProduct(repository);
main() {
  test('Should return a product when id is valid', () async {
    when(() => repository.show(1)).thenAnswer((_) async => Right(
        Product(id: 1, name: 'product #1', ean: '123321', sku: '34232443')));

    final result = await usecase(1);

    expect(result, isA<Right>());
  });

  test('Should return a InvalidProductIdFailure when id is invalid', () async {
    when(() => repository.show(0))
        .thenAnswer((_) async => Left(InvalidProductIdFailure()));

    final result = await usecase(0);

    expect(result, isA<Left>());
  });
}
