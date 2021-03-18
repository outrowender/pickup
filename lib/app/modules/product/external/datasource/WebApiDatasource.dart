import 'package:pickup/app/modules/product/data/datasources/IProductDatasource.dart';
import 'package:pickup/app/modules/product/data/models/ProductModel.dart';
import 'package:dio/dio.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';

class WebApiDatasource implements IProductDatasource {
  late final Dio dio;
  WebApiDatasource(this.dio);

  @override
  Future<ProductModel> getProduct(int id) async {
    if (id < 1) throw ProductDatasourceFailure(); //TODO: some nice validators

    final response = await dio.get('products/$id');

    if (response.statusCode == 200) {
      final data = (response.data as ProductModel);
      return data;
    } else {
      throw ProductDatasourceFailure();
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get('products');

    if (response.statusCode == 200) {
      final data = (response.data as List<ProductModel>);
      return data.toList();
    } else {
      throw ProductDatasourceFailure();
    }
  }

  @override
  Future<bool> saveProducts(List<Product> products) async {
    final response = await dio.post('products', data: products);

    if (response.statusCode == 200) {
      final data = (response.data as bool);
      return data;
    } else {
      throw ProductDatasourceFailure();
    }
  }
}
