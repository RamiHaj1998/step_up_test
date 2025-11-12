import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/utils/extensions/extensions.dart';
import 'package:step_up_test/core/utils/routing/routes/enter_password_route.dart';
import 'package:step_up_test/core/widgets/app_appbar.dart';
import 'package:step_up_test/core/widgets/app_button.dart';
import 'package:step_up_test/core/widgets/app_scaffold.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/core/widgets/stay_organized_widget.dart';
import 'package:step_up_test/features/sign_up/views/widgets/change_languages.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return AppScaffold(
        appBar: const AppAppbar(),
        body: SingleChildScrollView(
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
              AppButton(
                onPressed: () {},
                bgColor: appColors.grayLighter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppSvgImage(path: Assets.icGoogle),
                    AppSpaces.small.horizontalSpace,
                    Text(context.locale.continueWithGoogle,
                        style: AppTextStyleFactory.body
                            .copyWith(color: appColors.primary))
                  ],
                ),
              ),
              AppSpaces.large.verticalSpace,
              Center(
                child: Text(context.locale.or,
                    style: AppTextStyleFactory.caption1
                        .copyWith(color: appColors.secondary)),
              ),
              AppSpaces.large.verticalSpace,
              AppButton(
                onPressed: () => context.pushNamed(EnterPasswordRoute.name),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.locale.continueWithEmail,
                        style: AppTextStyleFactory.body
                            .copyWith(color: appColors.white))
                  ],
                ),
              ),
              AppSpaces.onSides.verticalSpace,
              Center(
                child: SizedBox(
                  width: 250.w,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: context.locale.bySigningUpYouAgree,
                            style: AppTextStyleFactory.footNote
                                .copyWith(color: appColors.secondary)),
                        TextSpan(
                            text: context.locale.termsOfService,
                            style: AppTextStyleFactory.footNote.copyWith(
                                color: appColors.secondary,
                                decoration: TextDecoration.underline)),
                        TextSpan(
                            text: ' ${context.locale.and} ',
                            style: AppTextStyleFactory.footNote
                                .copyWith(color: appColors.secondary)),
                        TextSpan(
                            text: context.locale.privacyPolicy,
                            style: AppTextStyleFactory.footNote.copyWith(
                                color: appColors.secondary,
                                decoration: TextDecoration.underline))
                      ])),
                ),
              ),
              161.verticalSpace,
              const ChangeLanguages(),
              AppSpaces.onSides.verticalSpace,
              const StayOrganizedWidget()
            ],
          ),
        ));
  }
}
