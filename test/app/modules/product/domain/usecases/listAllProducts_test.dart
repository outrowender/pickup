import 'package:flutter_test/flutter_test.dart';
import 'package:pickup/types/either.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/listAllProducts.dart';

class ProductRepositoryMock extends Mock implements ProductRepository {}

main() {
  final repository = ProductRepositoryMock();
  final usecase = ListAllProductsImpl(repository);

  test('Should return a list of products', () async {
    //mocktail will create fake result of these calls
    when(() => repository.list()).thenAnswer((_) async => Right(<Product>[]));

    final result = await usecase();

    //'right' means a list of products
    //may become more clear in a future implementation
    expect(result, isA<Right>());
  });

  test('Should return a error when list products is not available', () async {
    when(() => repository.list())
        .thenAnswer((_) async => Left(ListProductsFailure()));

    final result = await usecase();

    expect(result, isA<Left>());
  });
}
