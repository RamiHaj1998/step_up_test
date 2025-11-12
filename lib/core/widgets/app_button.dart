import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.child,
      super.key,
      this.onPressed,
      this.radius = 0,
      this.height,
      this.width,
      this.bgColor,
      this.borderColor});

  final Function()? onPressed;
  final Widget child;
  final double radius;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: bgColor ?? appColors.azure,
            foregroundColor: bgColor ?? appColors.azure,
            surfaceTintColor: bgColor ?? appColors.azure,
            side:
                BorderSide(color: borderColor ?? Colors.transparent, width: 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppCornerRadius.medium.r))),
        child: child,
      ),
    );
  }
}
