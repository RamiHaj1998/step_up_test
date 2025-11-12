import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/exceptions/error_handler.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/core/widgets/utilities.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_body.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_model.dart';
import 'package:step_up_test/features/sign_up/models/editions_model.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';
import 'package:step_up_test/features/sign_up/models/register_body.dart';
import 'package:step_up_test/features/sign_up/models/register_model.dart';
import 'package:step_up_test/features/sign_up/repositories/sign_up_repository.dart';
import 'package:step_up_test/features/sign_up/services/sign_up_services.dart';

@Singleton(as: SignUpRepository)
class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpServices _signUpServices;

  SignUpRepositoryImpl(this._signUpServices);

  @override
  Future<Either<Failure, PasswordComplexitySetting>>
      getPasswordComplexitySetting() async {
    try {
      final response = await _signUpServices.getPasswordComplexitySetting();
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, EditionsModel>> getEditionsForSelect() async {
    try {
      final response = await _signUpServices.getEditionsForSelect();
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, CheckTenantModel>> checkTenant(
      CheckTenantBody body) async {
    try {
      final response = await _signUpServices.checkAvailableTenant(body);
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, RegisterModel>> registerTenant(
      RegisterBody body) async {
    try {
      String? timeZone = await getTimezone();
      final response = await _signUpServices.registerTenant(timeZone, body);
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
