import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pickup/app/modules/product/data/repositories/ProductRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';
import 'package:pickup/app/modules/product/external/datasource/WebApiDatasource.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => WebApiDatasource(i())),
    Bind((i) => ProductRepository(i())),
    Bind((i) => ListAllProducts(i()))
  ];

  @override
  final List<ModularRoute> routes = [];
}
