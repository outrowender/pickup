import 'package:pickup/app/modules/product/data/models/ProductModel.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';

abstract class IProductDatasource{
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(int id);
  Future<bool> saveProducts(List<Product> products);
}