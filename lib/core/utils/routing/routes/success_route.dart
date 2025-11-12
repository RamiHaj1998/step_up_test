import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/features/success/views/success_screen.dart';

import 'app_route.dart';

class SuccessRoute extends AppRoute {
  static const String name = '/success';
  static const String path = '/success';

  @override
  Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const SuccessScreen();
  }
}
