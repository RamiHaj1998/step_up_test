import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/utils/extensions/extensions.dart';
import 'package:step_up_test/core/utils/routing/routes/success_route.dart';
import 'package:step_up_test/core/widgets/app_appbar.dart';
import 'package:step_up_test/core/widgets/app_button.dart';
import 'package:step_up_test/core/widgets/app_loader.dart';
import 'package:step_up_test/core/widgets/app_scaffold.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/core/widgets/stay_organized_widget.dart';
import 'package:step_up_test/core/widgets/utilities.dart';
import 'package:step_up_test/features/sign_up/cubit/sign_up_cubit.dart';
import 'package:step_up_test/features/sign_up/cubit/sign_up_state.dart';
import 'package:step_up_test/features/sign_up/models/check_tenant_model.dart';
import 'package:step_up_test/features/sign_up/views/widgets/text_and_field.dart';

class EnterCompanyScreen extends StatelessWidget {
  const EnterCompanyScreen({super.key, this.email, this.pass});

  final String? email;
  final String? pass;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpCubit>()..getEditions(),
      child: EnterCompanyView(email: email, pass: pass),
    );
  }
}

class EnterCompanyView extends StatefulWidget {
  const EnterCompanyView({super.key, this.email, this.pass});

  final String? email;
  final String? pass;

  @override
  State<EnterCompanyView> createState() => _EnterCompanyViewState();
}

class _EnterCompanyViewState extends State<EnterCompanyView> {
  TextEditingController companyController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  List<TextInputFormatter> get format => [
        FilteringTextInputFormatter.allow(
          RegExp(r'[a-zA-Z]'),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    SignUpCubit signUpCubit = context.read<SignUpCubit>();
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(success: (redirectToSuccessScreen) {
          if (redirectToSuccessScreen == true) {
            context.pushReplacementNamed(SuccessRoute.name);
          }
        });
      },
      child: AppScaffold(
          appBar: const AppAppbar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                19.verticalSpace,
                Text(context.locale.enterYourCompanyName,
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
                    controller: companyController,
                    textInputType: TextInputType.text,
                    title: context.locale.yourCompanyOrTeamName,
                    prefixIcon: Assets.icTeam,
                    suffixIconConstraints:
                        BoxConstraints(maxHeight: 24.r, maxWidth: 105.r),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[a-zA-Z0-9-]'),
                      ),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return context.locale.theTenantNameMustBeEntered;
                      }

                      if (!value.stringStartsWithLetter) {
                        return context.locale
                            .theTenantNameMustBeginWithLetterOfTheAlphabet;
                      }

                      return null;
                    },
                    autoValidateMode: AutovalidateMode.onUserInteraction,
                    suffix: Text('.workiom.com',
                        style: AppTextStyleFactory.body
                            .copyWith(color: appColors.placeholder)),
                    hint: context.locale.workspaceName,
                    onChange: (value) {
                      signUpCubit.refreshPage();
                    }),
                AppSpaces.onSides.verticalSpace,
                TextAndField(
                    controller: firstNameController,
                    textInputType: TextInputType.name,
                    title: context.locale.yourFirstName,
                    prefixIcon: Assets.icName,
                    suffix: const SizedBox.shrink(),
                    hint: context.locale.enterYourFirstName,
                    inputFormatters: format,
                    onChange: (value) {
                      signUpCubit.refreshPage();
                    }),
                AppSpaces.onSides.verticalSpace,
                TextAndField(
                    controller: lastNameController,
                    textInputType: TextInputType.name,
                    title: context.locale.yourLastName,
                    prefixIcon: Assets.icName,
                    suffix: const SizedBox.shrink(),
                    hint: context.locale.enterYourLastName,
                    inputFormatters: format,
                    onChange: (value) {
                      signUpCubit.refreshPage();
                    }),
                AppSpaces.large.verticalSpace,
                BlocBuilder<SignUpCubit, SignUpState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        orElse: () => AppButton(
                            onPressed: companyController.text.isNotEmpty
                                ? () {
                                    signUpCubit.checkTenant(
                                        tenantName: companyController.text,
                                        onDone: (CheckTenantModel checkTenant) {
                                          if (checkTenant.result?.tenantId ==
                                              null) {
                                            signUpCubit.registerTenant(
                                              tenantName:
                                                  companyController.text,
                                              email: widget.email ?? '',
                                              firstName:
                                                  firstNameController.text,
                                              lastName: lastNameController.text,
                                              password: widget.pass ?? '',
                                            );
                                          } else {
                                            showToast(
                                                context,
                                                context
                                                    .locale.tenantAlreadyExists,
                                                backgroundColor: appColors.red);
                                            signUpCubit.refreshPage();
                                          }
                                        });
                                  }
                                : null,
                            child: Text(context.locale.createWorkspace,
                                style: AppTextStyleFactory.body
                                    .copyWith(color: appColors.white))),
                        loading: () => const AppLoader());
                  },
                ),
                136.verticalSpace,
                const StayOrganizedWidget()
              ],
            ),
          )),
    );
  }
}
