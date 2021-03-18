import 'package:pickup/app/modules/product/data/datasources/productDatasource.dart';
import 'package:pickup/app/modules/product/data/models/productModel.dart';
import 'package:dio/dio.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';

class WebApiDatasource implements ProductDatasource {
  late final Dio dio;
  WebApiDatasource(this.dio);

  @override
  Future<ProductModel> getProduct(int id) {
    // TODO: implement getProduct
    throw UnimplementedError();
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
  Future<bool> saveProducts(List<ProductModel> products) {
    // TODO: implement saveProducts
    throw UnimplementedError();
  }
}
