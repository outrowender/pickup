import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';
import 'IListAllProductsUsecase.dart';


class ListAllProductsUsecase implements IListAllProductsUsecase {
  late final IProductRepository repository;

  ListAllProductsUsecase(this.repository);

  @override
  Future<Either<ListProductsFailure, List<Product>>> call() {
    return repository.list();
  }
}
