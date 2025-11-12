import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/exceptions/error_handler.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/core/repositories/authentication/authentication_repository.dart';
import 'package:step_up_test/core/services/authentication/authenticate_services.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';
import 'package:step_up_test/features/sign_up/models/register_model.dart';

@Singleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticateServices _authenticateServices;

  AuthenticationRepositoryImpl(this._authenticateServices);

  @override
  Future<Either<Failure, RegisterModel>> loginTenant(LoginBody body) async {
    try {
      final response = await _authenticateServices.login(body);
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
