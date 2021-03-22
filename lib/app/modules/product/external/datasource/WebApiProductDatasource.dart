import 'package:pickup/app/modules/product/data/datasources/IProductDatasource.dart';
import 'package:pickup/app/modules/product/data/models/ProductModel.dart';
import 'package:dio/dio.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';
import 'package:pickup/config/environment.dart';

class WebApiProductDatasource implements IProductDatasource {
  late final Dio dio;
  WebApiProductDatasource(this.dio);

  @override
  Future<ProductModel> getProduct(int id) async {
    if (id < 1) throw ProductDatasourceFailure(); //TODO: some nice validators

    final response = await dio.get('$host/products/$id');//TODO: convert dio to a service for better testing

    if (response.statusCode == 200) {
      final data = (response.data as ProductModel);
      return data;
    } else {
      throw ProductDatasourceFailure();
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get('$host/products');

    if (response.statusCode == 200) {
      final data = (response.data as List);
      final products = data.map((e) => 
        ProductModel.fromMap(e)
      );
      return products.toList();
    } else {
      throw ProductDatasourceFailure();
    }
  }

  @override
  Future<bool> saveProducts(List<Product> products) async {
    final response = await dio.post('$host/products', data: products);

    if (response.statusCode == 200) {
      final data = (response.data as bool);
      return data;
    } else {
      throw ProductDatasourceFailure();
    }
  }
}
