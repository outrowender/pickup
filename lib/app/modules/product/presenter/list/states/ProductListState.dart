import 'package:pickup/app/modules/product/domain/entities/Product.dart';

abstract class ProductListState {}

class ListSucces implements ProductListState {
  late final List<Product> list;
  ListSucces({
    required this.list,
  });
}

class ListError implements ProductListState {}

class ListLoading implements ProductListState {}

class ListStart implements ProductListState {}
