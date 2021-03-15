import 'package:pickup/types/either.dart';
import 'package:pickup/app/modules/product/domain/entities/product.dart';
import 'package:pickup/app/modules/product/domain/errors/errors.dart';
import 'package:pickup/app/modules/product/domain/repositories/productRepository.dart';

abstract class ShowProduct {
  Future<Either<ShowProductFailure, Product>> call(int id);
}

class ShowProductImpl implements ShowProduct {
  late final ProductRepository repository;

  ShowProductImpl(this.repository);

  @override
  Future<Either<ShowProductFailure, Product>> call(int id) async {
    if (id < 1) return Left(InvalidProductIdFailure());

    return repository.show(id);
  }
}
