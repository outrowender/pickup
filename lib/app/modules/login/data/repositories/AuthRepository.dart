import 'package:pickup/app/modules/login/data/datasources/IAuthDatasource.dart';
import 'package:pickup/app/modules/login/domain/errors/LoginErrors.dart';
import 'package:pickup/app/modules/login/domain/entities/User.dart';
import 'package:pickup/app/modules/login/domain/repositories/IAuthRepository.dart';
import 'package:pickup/types/Either.dart';

class AuthRepository implements IAuthRepository {
  late final IAuthDatasource datasource;
  AuthRepository(this.datasource);

  @override
  Future<Either<UserLoginFailure, User>> login(String email) async {
    try {
      final result = await datasource.getUser(email);
      return Right(result);
    } catch (e) {
      print(e);
      return Left(UserNotFoundFailure());
    }
  }
}
