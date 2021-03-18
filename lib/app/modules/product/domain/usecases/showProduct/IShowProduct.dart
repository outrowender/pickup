import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';

abstract class IShowProduct {
  Future<Either<ShowProductFailure, Product>> call(int id);
}