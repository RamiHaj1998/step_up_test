import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/features/sign_up/views/sign_up_screen.dart';
import 'package:step_up_test/features/splash/views/splash_screen.dart';

import 'app_route.dart';

class SignUpRoute extends AppRoute {
  static const String name = '/sign-up';
  static const String path = '/sign-up';

  @override
  Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const SignUpScreen();
  }
}
