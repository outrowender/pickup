import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pickup/app/modules/login/presenter/LoginPage.dart';
import 'package:pickup/app/modules/product/data/repositories/ProductRepository.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProductsUsecase.dart';
import 'package:pickup/app/modules/product/external/datasource/WebApiProductDatasource.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsBloc.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsPage.dart';
import 'package:pickup/app/modules/login/presenter/LoginModal.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => WebApiProductDatasource(i())),
    Bind((i) => ProductRepository(i())),
    Bind((i) => ListAllProductsUsecase(i())),
    Bind((i) => ListProductsBloc(i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginModal()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/products', child: (_, args) => ListProductsPage()),
  ];
}
