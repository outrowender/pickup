import 'package:bloc/bloc.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';
import 'package:pickup/app/modules/product/presenter/list/states/ProductListState.dart';

class ListProductsBloc extends Bloc<void, ProductListState> {
  final ListAllProducts usecase;

  ListProductsBloc(this.usecase)
      : super(ListStartState()); //initial state of bloc

  @override
  Stream<ProductListState> mapEventToState(void event) async* {
    yield ListLoadingState();
    final result = await usecase();

    if (result.isRight) yield ListSuccessState(list: result.right);

    if (result.isLeft) yield ListErrorState();
  }
}
