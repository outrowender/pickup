import 'package:pickup/app/modules/login/data/models/UserModel.dart';

abstract class IAuthDatasource{
  Future<UserModel> getUser(String email);
}