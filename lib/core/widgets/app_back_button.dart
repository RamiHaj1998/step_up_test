import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPress;

  const AppBackButton({this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return InkWell(
      onTap: onPress ?? context.pop,
      child: SvgPicture.asset(Assets.icBackIcon,
          color: appColors.azure, height: 24.r, width: 18.r),
    );
  }
}
