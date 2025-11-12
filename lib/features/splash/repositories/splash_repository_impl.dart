import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/exceptions/error_handler.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/features/splash/models/current_login_information_model.dart';
import 'package:step_up_test/features/splash/repositories/splash_repository.dart';
import 'package:step_up_test/features/splash/services/splash_services.dart';

@Singleton(as: SplashRepository)
class SplashRepositoryImp implements SplashRepository {
  final SplashService _splashServices;

  SplashRepositoryImp(this._splashServices);

  @override
  Future<Either<Failure, CurrentLoginInformationModel>>
      getCurrentLoginInformation() async {
    try {
      final response = await _splashServices.getCurrentLoginInformation();
      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
