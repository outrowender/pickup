import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';

abstract class IProductRepository {
  Future<Either<ListProductsFailure, List<Product>>> list();
  Future<Either<ShowProductFailure, Product>> show(int id);
  Future<Either<SaveProductsFailure, bool>> save(List<Product> products);
}
