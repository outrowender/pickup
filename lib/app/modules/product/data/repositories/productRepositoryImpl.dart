import 'package:pickup/app/modules/product/data/datasources/productDatasource.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';
import 'package:pickup/types/either.dart';

class ProductRepositoryImpl implements ProductRepository {
  late final ProductDatasource datasource;
  ProductRepositoryImpl(this.datasource);

  @override
  Future<Either<ListProductsFailure, List<Product>>> list() async {
    try {
      final result = await datasource.getProducts();
      return Right(result);
    } catch (e) {
      return Left(ProductDatasourceFailure());
    }
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