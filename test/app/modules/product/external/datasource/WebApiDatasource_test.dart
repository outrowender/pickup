import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/data/factories/ProductFactory.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';
import 'package:pickup/app/modules/product/external/datasource/WebApiProductDatasource.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  final datasource = WebApiProductDatasource(dio);
  final productFactory = ProductFactory();
  test('should return a list of products from server', () async {
    
    when(() => dio.get('products')).thenAnswer(
      (_) async => Response(
        data: json.encode(productFactory.createList(10)),
        statusCode: 200,
        requestOptions: RequestOptions(path: 'products'),
      ),
    );

    final result = datasource.getProducts();

    expect(result, completes);
  });

  test('should throw a ProductDatasourceFailure when request is forbidden', () async {
    
    when(() => dio.get('products')).thenAnswer(
      (_) async => Response(
        data: {},
        statusCode: 401,
        requestOptions: RequestOptions(path: 'products'),
      ),
    );

    final result = datasource.getProducts();

    expect(result, throwsA(isInstanceOf<ProductDatasourceFailure>()));
  });
}
