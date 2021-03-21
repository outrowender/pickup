import 'package:pickup/app/modules/product/domain/entities/Product.dart';

abstract class ProductListState {}

class ListSuccessState implements ProductListState {
  late final List<Product> list;
  ListSuccessState({
    required this.list,
  });
}

class ListErrorState implements ProductListState {}

class ListLoadingState implements ProductListState {}

class ListStartState implements ProductListState {}
