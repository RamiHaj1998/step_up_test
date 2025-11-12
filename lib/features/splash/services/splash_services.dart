import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:step_up_test/features/splash/models/current_login_information_model.dart';

part 'splash_services.g.dart';

@RestApi()
@LazySingleton()
abstract class SplashService {
  @factoryMethod
  factory SplashService(Dio dio) = _SplashService;

  @GET("/Session/GetCurrentLoginInformations")
  Future<CurrentLoginInformationModel> getCurrentLoginInformation();
}
