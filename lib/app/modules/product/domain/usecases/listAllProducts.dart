import 'package:pickup/types/either.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';

abstract class ListAllProducts {
  //always depend on abstractions, not implementations!
  Future<Either<ListProductsFailure, List<Product>>> call();
}

class ListAllProductsImpl implements ListAllProducts {
  late final ProductRepository repository;

  ListAllProductsImpl(this.repository);

  @override
  Future<Either<ListProductsFailure, List<Product>>> call() {
    return repository.list();
  }
}
