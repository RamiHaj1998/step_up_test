import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/utils/extensions/extensions.dart';
import 'package:step_up_test/core/utils/routing/routes/enter_company_route.dart';
import 'package:step_up_test/core/widgets/app_appbar.dart';
import 'package:step_up_test/core/widgets/app_button.dart';
import 'package:step_up_test/core/widgets/app_scaffold.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/core/widgets/stay_organized_widget.dart';
import 'package:step_up_test/features/sign_up/cubit/sign_up_cubit.dart';
import 'package:step_up_test/features/sign_up/cubit/sign_up_state.dart';
import 'package:step_up_test/features/sign_up/models/password_complexity_setting_model.dart';
import 'package:step_up_test/features/sign_up/views/widgets/password_validation.dart';
import 'package:step_up_test/features/sign_up/views/widgets/text_and_field.dart';

class EnterPasswordScreen extends StatelessWidget {
  const EnterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<SignUpCubit>()..getPasswordComplexitySetting(),
        child: const SignUpView());
  }
}

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  List<bool> conditions = [];
  int numberOfConditions = 0;

  num get _value {
    int satisfiedConditions = conditions.where((condition) => condition).length;
    return conditions.isEmpty ? 0 : (satisfiedConditions / numberOfConditions);
  }

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    SignUpCubit signUpCubit = context.read<SignUpCubit>();
    return AppScaffold(
        appBar: const AppAppbar(),
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                success: (redirectToSuccessScreen) {},
                checkConditions: (setting) {
                  conditions.clear();
                  conditions.addAll([
                    if ((setting?.requireDigit ?? false))
                      passwordController.text.stringContainsNumber,
                    if ((setting?.requireLowercase ?? false))
                      passwordController.text.stringContainsLowercase,
                    if ((setting?.requireUppercase ?? false))
                      passwordController.text.stringContainsUppercase,
                    if ((setting?.requiredLength ?? 0) != 0)
                      passwordController.text.length >=
                          (setting?.requiredLength ?? 0),
                  ]);
                },
                passwordSetting: (setting) {
                  List numberOfConditionsList = [
                    if ((setting?.requireDigit ?? false)) false,
                    if ((setting?.requireLowercase ?? false)) false,
                    if ((setting?.requireUppercase ?? false)) false,
                    if ((setting?.requiredLength ?? 0) != 0) false,
                  ];
                  numberOfConditions = numberOfConditionsList.length;
                });
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  19.verticalSpace,
                  Text(context.locale.createYourFreeAccount,
                      style: AppTextStyleFactory.title2
                          .copyWith(color: appColors.primary)),
                  AppSpaces.small.verticalSpace,
                  Row(
                    children: [
                      Text(context.locale.letStartAnAmazingJourney,
                          style: AppTextStyleFactory.headlineReg
                              .copyWith(color: appColors.secondary)),
                      AppSpaces.small.horizontalSpace,
                      const AppSvgImage(path: Assets.icHand)
                    ],
                  ),
                  137.verticalSpace,
                  TextAndField(
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                    title: context.locale.yourWorkEmail,
                    prefixIcon: Assets.icEmail,
                    onChange: (value) {
                      signUpCubit.checkConditions();
                    },
                  ),
                  24.verticalSpace,
                  TextAndField(
                      controller: passwordController,
                      textInputType: TextInputType.visiblePassword,
                      title: context.locale.yourPassword,
                      prefixIcon: Assets.icPass,
                      onChange: (value) {
                        signUpCubit.checkConditions();
                      }),
                  AppSpaces.onSides.verticalSpace,
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: SliderComponentShape.noOverlay,
                      overlayShape: SliderComponentShape.noOverlay,
                    ),
                    child: Slider(
                      value: _value.toDouble(),
                      divisions: 100,
                      onChanged: (_) {},
                      inactiveColor: appColors.grayLighter,
                      activeColor:
                          _value == 1 ? appColors.springGreen : appColors.mango,
                    ),
                  ),
                  AppSpaces.small.verticalSpace,
                  BlocBuilder<SignUpCubit, SignUpState>(
                    buildWhen: (previous, current) =>
                        current is SignUpPasswordSettingState,
                    builder: (context, state) {
                      Setting? setting = state.whenOrNull(
                          passwordSetting: (setting) => setting);
                      return Column(
                        children: [
                          PasswordValidation(
                            icon: _value == 1
                                ? Assets.icCorrect
                                : Assets.icWarning,
                            boldText: true,
                            validationText: context.locale.notEnoughStrong,
                          ),
                          if ((setting?.requiredLength ?? 0) != 0)
                            PasswordValidation(
                              icon: passwordController.text.length >=
                                      (setting?.requiredLength ?? 0)
                                  ? Assets.icCorrect
                                  : Assets.icWrong,
                              validationText: context.locale
                                  .passwordsMustHaveAtLeastCharacters(
                                      setting?.requiredLength ?? 0),
                            ),
                          if ((setting?.requireUppercase ?? false))
                            PasswordValidation(
                              icon: passwordController
                                      .text.stringContainsUppercase
                                  ? Assets.icCorrect
                                  : Assets.icWrong,
                              validationText: context
                                  .locale.passwordsMustHaveAtLeastOneUppercase,
                            ),
                          if ((setting?.requireDigit ?? false))
                            PasswordValidation(
                              icon: passwordController.text.stringContainsNumber
                                  ? Assets.icCorrect
                                  : Assets.icWrong,
                              validationText: context
                                  .locale.passwordsMustHaveAtLeastOneNumber,
                            ),
                          if ((setting?.requireLowercase ?? false))
                            PasswordValidation(
                              icon: passwordController
                                      .text.stringContainsLowercase
                                  ? Assets.icCorrect
                                  : Assets.icWrong,
                              validationText: context
                                  .locale.passwordsMustHaveAtLeastOneLowercase,
                            ),
                        ],
                      );
                    },
                  ),
                  AppSpaces.large.verticalSpace,
                  AppButton(
                      onPressed:
                          _value == 1 && emailController.text.stringIsEmail
                              ? () {
                                  context.pushNamed(EnterCompanyRoute.name,
                                      extra: EnterCompanyRoute.extraBuilder(
                                          email: emailController.text,
                                          pass: passwordController.text));
                                }
                              : null,
                      child: Text(context.locale.confirmPassword,
                          style: AppTextStyleFactory.body
                              .copyWith(color: appColors.white))),
                  136.verticalSpace,
                  const StayOrganizedWidget()
                ],
              ),
            );
          },
        ));
  }
}
