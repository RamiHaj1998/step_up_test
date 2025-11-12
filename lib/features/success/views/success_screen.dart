import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/widgets/app_scaffold.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/core/widgets/stay_organized_widget.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return AppScaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            width: 254.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Thank you for choosing',
                    style:
                        AppTextStyleFactory.title2.copyWith(color: appColors.primary)),
                const AppSvgImage(path: Assets.logo)
              ],
            ),
          ),
        ),
        const StayOrganizedWidget()
      ],
    ));
  }
}
