import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/features/splash/views/splash_screen.dart';

import 'app_route.dart';

class SplashRoute extends AppRoute {
  static const String name = '/';
  static const String path = '/';

  @override
  Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}
