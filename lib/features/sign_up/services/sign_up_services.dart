import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_body.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_model.dart';
import 'package:step_up_test/features/sign_up/models/editions_model.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';
import 'package:step_up_test/features/sign_up/models/register_body.dart';
import 'package:step_up_test/features/sign_up/models/register_model.dart';

part 'sign_up_services.g.dart';

@RestApi()
@LazySingleton()
abstract class SignUpServices {
  @factoryMethod
  factory SignUpServices(Dio dio) = _SignUpServices;

  @GET("/Profile/GetPasswordComplexitySetting")
  Future<PasswordComplexitySetting> getPasswordComplexitySetting();

  @GET("/TenantRegistration/GetEditionsForSelect")
  Future<EditionsModel> getEditionsForSelect();

  @POST("/Account/IsTenantAvailable")
  Future<CheckTenantModel> checkAvailableTenant(@Body() CheckTenantBody body);

  @POST("/TenantRegistration/RegisterTenant")
  Future<RegisterModel> registerTenant(
      @Query('timeZone') String? timeZone, @Body() RegisterBody body);
}
