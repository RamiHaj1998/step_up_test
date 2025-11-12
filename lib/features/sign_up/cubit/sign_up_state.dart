import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitialState;

  const factory SignUpState.loading() = SignUpLoadingState;

  const factory SignUpState.success({bool? redirectToSuccessPage}) = SignUpSuccessState;

  const factory SignUpState.passwordSetting(Setting? setting) =
      SignUpPasswordSettingState;

  const factory SignUpState.checkConditions(Setting? setting) =
      SignUpCheckConditionsState;

  const factory SignUpState.failure(String error) = SignUpFailureState;
}
