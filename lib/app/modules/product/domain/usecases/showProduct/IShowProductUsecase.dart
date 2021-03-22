import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';

abstract class IShowProductUsecase {
  Future<Either<ShowProductFailure, Product>> call(int id);
}