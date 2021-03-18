import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'ISaveProducts.dart';

class SaveProduct implements ISaveProduct {
  late final IProductRepository repository;

  SaveProduct(this.repository);

  @override
  Future<Either<SaveProductsFailure, bool>> call(List<Product> products) async {
    if (products.length < 1) return Left(NoProductsToSaveFailure());

    return this.repository.save(products);
  }
}
