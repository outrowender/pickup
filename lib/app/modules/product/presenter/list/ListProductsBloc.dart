import 'package:bloc/bloc.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';
import 'package:pickup/app/modules/product/presenter/list/states/ProductListState.dart';

class ListProductsBloc extends Bloc<bool, ProductListState> {
  final ListAllProducts usecase;

  ListProductsBloc(this.usecase) : super(ListStart()); //initial state of screen

  @override
  Stream<ProductListState> mapEventToState(bool event) async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
