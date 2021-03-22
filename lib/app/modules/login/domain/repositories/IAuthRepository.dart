import 'package:pickup/app/modules/login/domain/entities/User.dart';
import 'package:pickup/app/modules/login/domain/errors/LoginErrors.dart';
import 'package:pickup/types/Either.dart';

abstract class IAuthRepository{
  Future<Either<UserLoginFailure, User>> login(String email);
}