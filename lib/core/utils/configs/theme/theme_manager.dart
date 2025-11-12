import 'package:flutter/material.dart';
import 'package:step_up_test/core/di/injection_container.dart';

import 'app_colors.dart';
import 'app_text_style_factory.dart';

ThemeData get getApplicationTheme => ThemeData(
      useMaterial3: false,
      appBarTheme:
          AppBarTheme(backgroundColor: getIt<AppColors>().white, elevation: 0),
      highlightColor: Colors.transparent,
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: getIt<AppColors>().azure,
      primaryColorDark: getIt<AppColors>().azure,
      disabledColor: getIt<AppColors>().disabled,
      colorScheme: ColorScheme.fromSwatch(backgroundColor: Colors.white),
      splashColor: Colors.transparent,
      fontFamily: AppTextStyleFactory.getFontFamily(),
    );
