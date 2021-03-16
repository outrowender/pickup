import 'package:pickup/app/modules/product/data/models/productModel.dart';

abstract class ProductDatasource{
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(int id);
  Future<bool> saveProducts(List<ProductModel> products);
}