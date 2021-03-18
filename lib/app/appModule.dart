import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pickup/app/modules/product/data/datasources/productDatasource.dart';
import 'package:pickup/app/modules/product/data/repositories/productRepositoryImpl.dart';
import 'package:pickup/app/modules/product/domain/usecases/listAllProducts.dart';
import 'package:pickup/app/modules/product/external/datasource/webApiDatasource.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => WebApiDatasource(i())),
    Bind((i) => ProductRepositoryImpl(i())),
    Bind((i) => ListAllProductsImpl(i()))
  ];

  @override
  final List<ModularRoute> routes = [];
}
