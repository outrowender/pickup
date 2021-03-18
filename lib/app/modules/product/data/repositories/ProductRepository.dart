import 'package:pickup/app/modules/product/data/datasources/IProductDatasource.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';
import 'package:pickup/types/Either.dart';

class ProductRepository implements IProductRepository {
  late final IProductDatasource datasource;
  ProductRepository(this.datasource);

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
