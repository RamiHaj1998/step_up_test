import 'package:dartz/dartz.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_body.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_model.dart';
import 'package:step_up_test/features/sign_up/models/editions_model.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';
import 'package:step_up_test/features/sign_up/models/register_body.dart';
import 'package:step_up_test/features/sign_up/models/register_model.dart';

abstract class SignUpRepository {
  Future<Either<Failure, PasswordComplexitySetting>>
      getPasswordComplexitySetting();

  Future<Either<Failure, EditionsModel>> getEditionsForSelect();

  Future<Either<Failure, CheckTenantModel>> checkTenant(CheckTenantBody body);

  Future<Either<Failure, RegisterModel>> registerTenant(RegisterBody body);
}
