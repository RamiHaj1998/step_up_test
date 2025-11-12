import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';

part 'authenticate_services.g.dart';

@RestApi(baseUrl: 'https://api.workiom.club/api')
@LazySingleton()
abstract class AuthenticateServices {
  @factoryMethod
  factory AuthenticateServices(Dio dio) = _AuthenticateServices;

  @POST("/TokenAuth/Authenticate")
  Future<dynamic> login(@Body() LoginBody body);
}
