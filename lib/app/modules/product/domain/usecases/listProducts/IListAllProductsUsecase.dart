import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';

abstract class IListAllProductsUsecase {
  //always depend on abstractions, not implementations!
  Future<Either<ListProductsFailure, List<Product>>> call();
}