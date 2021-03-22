import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/data/datasources/IProductDatasource.dart';
import 'package:pickup/app/modules/product/data/models/ProductModel.dart';
import 'package:pickup/app/modules/product/data/repositories/ProductRepository.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';

class ProductDatasourceMock extends Mock implements IProductDatasource {}

main() {
  final datasource = ProductDatasourceMock();
  final repository = ProductRepository(datasource);
  test('Should return a product list', () async {
    when(() => datasource.getProducts())
        .thenAnswer((_) async => <ProductModel>[]);

    final result = await repository.list();

    expect(result.isRight, true);
  });

  test('Should return a ProductDatasourceFailure when datasource fail',
      () async {
    when(() => datasource.getProducts()).thenThrow(ProductDatasourceFailure());

    final result = await repository.list();

    expect(result.isLeft, true);
  });
}
