import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/data/datasources/productDatasource.dart';
import 'package:pickup/app/modules/product/data/models/productModel.dart';
import 'package:pickup/app/modules/product/data/repositories/productRepositoryImpl.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';

class ProductDatasourceMock extends Mock implements ProductDatasource {}

main() {
  final datasource = ProductDatasourceMock();
  final repository = ProductRepositoryImpl(datasource);
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

    //TODO: fix all return in these tests
    expect(result, throwsA(isInstanceOf<ProductDatasourceFailure>()));
  });
}
