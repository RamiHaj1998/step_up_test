import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class AppColors {
  Color get azure;

  Color get white;

  Color get disabled;

  Color get primary;

  Color get secondary;

  Color get grayLighter;

  Color get grayDarker;

  Color get mango;

  Color get springGreen;

  Color get placeholder;

  Color get red;
}

/// [LightAppColors] serves the light display mode
@Singleton(as: AppColors)
class LightAppColors implements AppColors {
  @override
  Color get azure => const Color(0xFF4E86F7);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get disabled => const Color(0xFFB5B5B5);

  @override
  Color get primary => const Color(0xFF0E0F12);

  @override
  Color get secondary => const Color(0xFF555555);

  @override
  Color get grayLighter => const Color(0xFFF4F4F4);

  @override
  Color get grayDarker => const Color(0xFFD6D6D6);

  @override
  Color get mango => const Color(0xFFF5C044);

  @override
  Color get springGreen => const Color(0xFF5BD77E);

  @override
  Color get placeholder => const Color(0xFF747474);

  @override
  Color get red => const Color(0xFFE44305);
}
