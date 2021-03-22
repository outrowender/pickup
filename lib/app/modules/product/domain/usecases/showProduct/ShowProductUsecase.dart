import 'package:pickup/app/modules/product/domain/usecases/showProduct/IShowProductUsecase.dart';
import 'package:pickup/types/Either.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/ProductErrors.dart';
import 'package:pickup/app/modules/product/domain/repositories/IProductRepository.dart';

class ShowProduct implements IShowProductUsecase {
  late final IProductRepository repository;

  ShowProduct(this.repository);

  @override
  Future<Either<ShowProductFailure, Product>> call(int id) async {
    if (id < 1) return Left(InvalidProductIdFailure());

    return repository.show(id);
  }
}
