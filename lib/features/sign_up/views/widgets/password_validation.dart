import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.icon,
      required this.validationText,
      this.boldText = false});

  final String validationText;
  final String icon;
  final bool boldText;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return Row(
      children: [
        AppSvgImage(path: icon),
        AppSpaces.small.horizontalSpace,
        Text(validationText,
            style: boldText
                ? AppTextStyleFactory.body.copyWith(color: appColors.primary)
                : AppTextStyleFactory.caption1
                    .copyWith(color: appColors.secondary))
      ],
    );
  }
}
