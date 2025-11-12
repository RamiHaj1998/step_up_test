import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/cubit/locale/locale_cubit.dart';
import 'package:step_up_test/core/cubit/locale/locale_state.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/utils/constant.dart';
import 'package:step_up_test/core/utils/extensions/extensions.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';

class ChangeLanguages extends StatelessWidget {
  const ChangeLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    LocaleCubit localeCubit = context.read<LocaleCubit>();

    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        return Center(
          child: SizedBox(
            width: 80.w,
            child: PopupMenuButton(
                child: Row(
                  children: [
                    const AppSvgImage(path: Assets.icGlobal),
                    AppSpaces.small.horizontalSpace,
                    Text(localeCubit.locale.languageCode.selectLanguage,
                        style: AppTextStyleFactory.caption1
                            .copyWith(color: appColors.secondary)),
                    AppSpaces.small.horizontalSpace,
                    const AppSvgImage(path: Assets.icArrowDown),
                  ],
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          onTap: () => localeCubit.changeLocale(
                              updatedLocale: Constant.englishLocale),
                          value: Constant.englishLocale,
                          child: Text('English',
                              style: AppTextStyleFactory.caption1
                                  .copyWith(color: appColors.secondary))),
                      PopupMenuItem(
                          onTap: () => localeCubit.changeLocale(
                              updatedLocale: Constant.arabicLocale),
                          value: Constant.arabicLocale,
                          child: Text('العربية',
                              style: AppTextStyleFactory.caption1
                                  .copyWith(color: appColors.secondary))),
                    ]),
          ),
        );
      },
    );
  }
}
