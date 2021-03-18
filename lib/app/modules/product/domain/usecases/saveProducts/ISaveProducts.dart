import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';

abstract class ISaveProduct {
  Future<Either<SaveProductsFailure, bool>> call(List<Product> products);
}