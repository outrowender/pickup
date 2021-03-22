import 'package:pickup/app/modules/login/domain/entities/User.dart';
import 'package:pickup/app/modules/login/domain/errors/LoginErrors.dart';
import 'package:pickup/app/modules/login/domain/repositories/IAuthRepository.dart';
import 'package:pickup/types/Either.dart';
import 'IUserLoginUsecase.dart';

class UserLoginUsecase implements IUserLoginUsecase {
  late final IAuthRepository repository;

  UserLoginUsecase(this.repository);

  @override
  Future<Either<UserLoginFailure, User>> call(String email) {
    return this.repository.login(email);
  }
}
