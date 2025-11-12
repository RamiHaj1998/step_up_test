import 'package:dartz/dartz.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, dynamic>> loginTenant(LoginBody body);
}
