import 'package:dartz/dartz.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';

abstract class SaveProduct {
  Future<Either<SaveProductsFailure, void>> call(List<Product> products);
}

class SaveProductImpl implements SaveProduct {
  @override
  Future<Either<SaveProductsFailure, void>> call(List<Product> products) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
