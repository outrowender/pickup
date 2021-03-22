import 'package:pickup/app/modules/login/domain/entities/User.dart';

abstract class LoginPageState {}

class LoginSuccessState implements LoginPageState {
  late final User user;
  LoginSuccessState({required this.user});
}

class LoadingCredentialsState implements LoginPageState {}

class LoginErrorState implements LoginPageState {}

class LoginPageInitialState implements LoginPageState {}
