import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/repositories/authentication/authentication_repository.dart';
import 'package:step_up_test/core/widgets/utilities.dart';
import 'package:step_up_test/features/sign_up/cubit/sign_up_state.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_body.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_model.dart';
import 'package:step_up_test/features/sign_up/models/editions_model.dart';
import 'package:step_up_test/features/sign_up/models/login_body.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';
import 'package:step_up_test/features/sign_up/models/register_body.dart';
import 'package:step_up_test/features/sign_up/models/register_model.dart';
import 'package:step_up_test/features/sign_up/repositories/sign_up_repository.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepository _signUpRepository;
  final AuthenticationRepository _authenticationRepository;

  SignUpCubit(this._signUpRepository, this._authenticationRepository)
      : super(const SignUpState.initial());

  Setting? _setting;
  EditionsWithFeature? _edition;

  Future<void> getPasswordComplexitySetting() async {
    final settingOrFailure =
        await _signUpRepository.getPasswordComplexitySetting();
    settingOrFailure.fold((failure) {
      emit(SignUpState.failure(failure.message));
    }, (result) {
      _setting = result.result?.setting;
      emit(SignUpState.passwordSetting(result.result?.setting));
    });
  }

  Future<void> getEditions() async {
    final editionsOrFailure = await _signUpRepository.getEditionsForSelect();
    editionsOrFailure.fold((failure) {
      emit(SignUpState.failure(failure.message));
    }, (result) {
      _edition = result.result?.editionsWithFeatures?.firstOrNull;
    });
  }

  Future<void> checkTenant(
      {required String tenantName,
      required void Function(CheckTenantModel) onDone}) async {
    emit(const SignUpState.loading());
    final checkTenantOrFailure = await _signUpRepository
        .checkTenant(CheckTenantBody(tenantName: tenantName));
    checkTenantOrFailure.fold((failure) {
      emit(SignUpState.failure(failure.message));
    }, (checkTenant) {
      onDone.call(checkTenant);
    });
  }

  Future<void> registerTenant({
    required String tenantName,
    required String email,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    emit(const SignUpState.loading());
    final settingOrFailure = await _signUpRepository.registerTenant(
        RegisterBody(
            tenancyName: tenantName,
            name: tenantName,
            adminEmailAddress: email,
            adminPassword: password,
            adminFirstName: firstName,
            adminLastName: lastName,
            editionId: _edition?.edition?.id.toString()));
    settingOrFailure.fold((failure) {
      emit(SignUpState.failure(failure.message));
    }, (result) async {
      RegisterResult? registerResult = result.result;
      loginTenant(
          ianaTimeZone: await getTimezone(),
          password: password,
          tenantName: registerResult?.tenancyName,
          userNameOrEmailAddress: registerResult?.emailAddress);
      emit(const SignUpState.success());
    });
  }

  Future<void> loginTenant(
      {required String? ianaTimeZone,
      required String? password,
      required String? tenantName,
      required String? userNameOrEmailAddress}) async {
    emit(const SignUpState.loading());
    final settingOrFailure = await _authenticationRepository.loginTenant(
        LoginBody(
            ianaTimeZone: ianaTimeZone,
            userNameOrEmailAddress: userNameOrEmailAddress,
            password: password,
            rememberClient: false,
            singleSignIn: false,
            tenantName: tenantName));
    settingOrFailure.fold((failure) {
      emit(SignUpState.failure(failure.message));
    }, (result) {
      emit(const SignUpState.success(redirectToSuccessPage: true));
    });
  }

  void checkConditions() {
    emit(const SignUpState.initial());
    emit(SignUpState.checkConditions(_setting));
  }

  void refreshPage() {
    emit(const SignUpState.initial());
    emit(const SignUpState.success());
  }
}
