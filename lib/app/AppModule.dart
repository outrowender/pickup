import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pickup/app/modules/product/data/repositories/ProductRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';
import 'package:pickup/app/modules/product/external/datasource/WebApiDatasource.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsBloc.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsPage.dart';
import 'package:pickup/app/modules/login/presenter/LoginPage.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => WebApiDatasource(i())),
    Bind((i) => ProductRepository(i())),
    Bind((i) => ListAllProducts(i())),
    Bind((i) => ListProductsBloc(i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/products', child: (_, args) => ListProductsPage()),
  ];
}
