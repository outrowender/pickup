import 'package:pickup/types/either.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';

abstract class ProductRepository {
  Future<Either<ListProductsFailure, List<Product>>> list();
  Future<Either<ShowProductFailure, Product>> show(int id);
}
