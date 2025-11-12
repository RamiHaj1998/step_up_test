import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';

import 'app_back_button.dart';

abstract class AppPreferredSizeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppPreferredSizeWidget({super.key});

  @override
  Size get preferredSize => Size(double.infinity, 42.h);
}

class AppAppbar extends AppPreferredSizeWidget {
  final Widget? title;
  final bool hasBackButton;
  final Widget? action;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? prefix;

  const AppAppbar({
    this.title,
    this.hasBackButton = true,
    this.action,
    this.backgroundColor,
    this.padding,
    this.prefix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = getIt<AppColors>();
    final mBackgroundColor = backgroundColor ?? appColors.white;
    return AppBar(
      title: Container(
        height: 42.h,
        padding:
            padding ?? REdgeInsets.symmetric(horizontal: AppSpaces.onSides),
        color: mBackgroundColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (prefix != null)
              PositionedDirectional(
                start: 0,
                child: Align(alignment: Alignment.center, child: prefix!),
              ),
            if (hasBackButton)
              const PositionedDirectional(
                start: 0,
                child: AppBackButton(),
              ),
            PositionedDirectional(
                top: 0,
                bottom: 0,
                start: 44.w,
                end: 44.w,
                child: title ?? const SizedBox.shrink()),
            if (action != null)
              PositionedDirectional(
                end: 0,
                child: action!,
              ),
          ],
        ),
      ),
      primary: true,
      elevation: 0,
      backgroundColor: mBackgroundColor,
      automaticallyImplyLeading: false,
      leadingWidth: 0,
      toolbarHeight: 48.h,
      titleSpacing: 0,
    );
  }
}
