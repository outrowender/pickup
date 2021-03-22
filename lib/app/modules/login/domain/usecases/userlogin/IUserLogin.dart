import 'package:pickup/app/modules/login/domain/entities/User.dart';
import 'package:pickup/app/modules/login/domain/errors/LoginErrors.dart';
import 'package:pickup/types/Either.dart';

abstract class IUserLogin{
  Future<Either<UserLoginFailure, User>> call();
}