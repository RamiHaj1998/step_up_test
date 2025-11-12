import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:step_up_test/features/splash/models/current_login_information_model.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitialState;

  const factory SplashState.loading() = SplashLoadingState;

  const factory SplashState.success(
          CurrentLoginInformationModel currentLoginInformationModel) =
      SplashSuccessState;

  const factory SplashState.failure(String error) = SplashFailureState;
}
