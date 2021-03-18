import 'package:pickup/app/modules/product/data/models/ProductModel.dart';

abstract class IProductDatasource{
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(int id);
  Future<bool> saveProducts(List<ProductModel> products);
}