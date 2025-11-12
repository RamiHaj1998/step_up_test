import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/utils/extensions/extensions.dart';

import 'app_svg_image.dart';

class StayOrganizedWidget extends StatelessWidget {
  const StayOrganizedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return Padding(
      padding: REdgeInsets.only(bottom: AppSpaces.large),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.locale.stayOrganizedWith,
              style: AppTextStyleFactory.body
                  .copyWith(color: appColors.secondary)),
          AppSpaces.small.horizontalSpace,
          const AppSvgImage(path: Assets.logo)
        ],
      ),
    );
  }
}
