import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pickup/app/modules/product/domain/entities/Product.dart';
import 'package:pickup/app/modules/product/domain/errors/Errors.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsBloc.dart';
import 'package:pickup/app/modules/product/presenter/list/states/ProductListState.dart';
import 'package:pickup/types/Either.dart';

class ListAllProductsMock extends Mock implements ListAllProducts {}

main() {
  final usecase = ListAllProductsMock();
  final bloc = ListProductsBloc(usecase);
  test('Should stream all states ordered', () {
    when(() => usecase.call()).thenAnswer((_) async => Right(<Product>[]));
    bloc.add(any);

    expect(
        bloc.stream,
        emitsInOrder([
          isA<ListLoadingState>(),
          isA<ListSuccessState>(),
        ]));
  });

    test('Should stream an error', () {
    when(() => usecase.call()).thenAnswer((_) async => Left(ListProductsFailure()));
    bloc.add(true);

    expect(
        bloc.stream,
        emitsInOrder([
          isA<ListLoadingState>(),
          isA<ListErrorState>(),
        ]));
  });
}
