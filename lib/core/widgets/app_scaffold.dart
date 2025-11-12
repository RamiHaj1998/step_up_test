import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';

import 'app_appbar.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final AppPreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  final Widget? bottomSheet;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final bool withSafeAreaInBody;
  final List<Widget>? persistentFooterButtons;
  final bool wrapBottomNavigationBarWithSafeArea;

  const AppScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.padding,
    this.bottomSheet,
    this.appBar,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset,
    this.withSafeAreaInBody = true,
    this.persistentFooterButtons,
    this.wrapBottomNavigationBarWithSafeArea = true,
  });

  AppColors get _appColors => getIt<AppColors>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor ?? _appColors.white,
      appBar: appBar,
      body: withSafeAreaInBody ? SafeArea(child: _bodyWidget) : _bodyWidget,
      bottomSheet: bottomSheet,
      persistentFooterButtons: persistentFooterButtons,
      bottomNavigationBar: (bottomNavigationBar == null)
          ? null
          : !wrapBottomNavigationBarWithSafeArea
              ? bottomNavigationBar
              : SafeArea(child: bottomNavigationBar!),
    );
  }

  Widget get _bodyWidget => Padding(
        padding:
            padding ?? REdgeInsets.symmetric(horizontal: AppSpaces.onSides),
        child: body,
      );
}
