import 'package:pickup/types/either.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';

abstract class SaveProduct {
  Future<Either<SaveProductsFailure, bool>> call(List<Product> products);
}

class SaveProductImpl implements SaveProduct {
  late final ProductRepository repository;

  SaveProductImpl(this.repository);

  @override
  Future<Either<SaveProductsFailure, bool>> call(List<Product> products) async {
    if (products.length < 1) return Left(NoProductsToSaveFailure());

    return this.repository.save(products);
  }
}
