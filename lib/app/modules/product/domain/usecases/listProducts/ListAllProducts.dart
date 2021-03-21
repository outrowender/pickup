import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';
import 'IListAllProducts.dart';


class ListAllProducts implements IListAllProducts { //TODO: add "usecase" word in this name
  late final IProductRepository repository;

  ListAllProducts(this.repository);

  @override
  Future<Either<ListProductsFailure, List<Product>>> call() {
    return repository.list();
  }
}
