import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pickup/app/AppModule.dart';
import 'package:pickup/app/modules/product/domain/usecases/listProducts/ListAllProducts.dart';

main() {
  initModule(AppModule());

  test('Should DI last usecase flawless', () {
    final usecase = Modular.get<ListAllProducts>();

    expect(usecase, isA<ListAllProducts>());
  });
}
