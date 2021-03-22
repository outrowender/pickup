import 'package:dio/dio.dart';
import 'package:pickup/app/modules/login/data/datasources/IAuthDatasource.dart';
import 'package:pickup/app/modules/login/data/models/UserModel.dart';
import 'package:pickup/app/modules/login/domain/errors/LoginErrors.dart';
import 'package:pickup/config/environment.dart';

class WebApiAuthDatasource implements IAuthDatasource {
  late final Dio dio;
  WebApiAuthDatasource(this.dio);

  @override
  Future<UserModel> getUser(String email) async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);

    if (!emailValid) throw InvalidCredentialsFailure();

    final response = await dio.get('$host/users?email=$email');

    if (response.statusCode == 200) {
      final data = (response.data as UserModel);
      return data;
    } else if (response.statusCode == 404) {
      throw UserNotFoundFailure();
    }

    throw UserLoginFailure();
  }
}
