import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';
import 'package:pickup/types/either.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Either<ListProductsFailure, List<Product>>> list() {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<Either<SaveProductsFailure, bool>> save(List<Product> products) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<Either<ShowProductFailure, Product>> show(int id) {
    // TODO: implement show
    throw UnimplementedError();
  }
}
