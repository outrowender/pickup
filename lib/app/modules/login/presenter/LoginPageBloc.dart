import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickup/app/modules/login/domain/usecases/userlogin/UserLoginUsecase.dart';
import 'package:pickup/app/modules/login/presenter/state/LoginPageState.dart';

class LoginPageBloc extends Bloc<String, LoginPageState> {
  final UserLoginUsecase usecase;

  LoginPageBloc(this.usecase) : super(LoginPageInitialState());

  @override
  Stream<LoginPageState> mapEventToState(String event) async* {
    yield LoadingCredentialsState();
    final result = await usecase(event);

    if (result.isRight) yield LoginSuccessState(user: result.right);

    if (result.isLeft) yield LoginErrorState();
  }
}
