import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/features/sign_up/views/enter_password_screen.dart';

import 'app_route.dart';

class EnterPasswordRoute extends AppRoute {
  static const String name = '/enter-pass';
  static const String path = '/enter-pass';

  @override
  Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const EnterPasswordScreen();
  }
}
