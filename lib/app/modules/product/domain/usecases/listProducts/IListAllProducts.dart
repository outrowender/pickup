import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';

abstract class IListAllProducts {
  //always depend on abstractions, not implementations!
  Future<Either<ListProductsFailure, List<Product>>> call();
}