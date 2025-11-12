import 'package:dartz/dartz.dart';
import 'package:step_up_test/core/exceptions/failure.dart';
import 'package:step_up_test/features/splash/models/current_login_information_model.dart';

abstract class SplashRepository {
  Future<Either<Failure, CurrentLoginInformationModel>> getCurrentLoginInformation();
}
