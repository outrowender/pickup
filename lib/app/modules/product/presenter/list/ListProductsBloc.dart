import 'package:bloc/bloc.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProductsUsecase.dart';
import 'package:pickup/app/modules/product/presenter/list/states/ProductListState.dart';

class ListProductsBloc extends Bloc<void, ProductListState> { //bloc are the state manager
  final ListAllProductsUsecase usecase;

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
