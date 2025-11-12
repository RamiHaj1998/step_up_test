import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/features/sign_up/views/enter_company_screen.dart';

import 'app_route.dart';

class EnterCompanyRoute extends AppRoute {
  static const String name = '/enter-company';
  static const String path = '/enter-company';

  @override
  Widget pageBuilder(BuildContext context, GoRouterState state) {
    String? email;
    String? pass;
    try {
      final extra = jsonDecode(state.extra.toString()) as Map<String, dynamic>?;
      email = extra?['email'];
      pass = extra?['pass'];
    } catch (e) {
      debugPrint('EnterCompanyRoute builder(): $e');
    }

    return EnterCompanyScreen(email: email, pass: pass);
  }

  static String extraBuilder({
    String? email,
    String? pass,
  }) =>
      jsonEncode({
        if (email != null) 'email': email,
        if (pass != null) 'pass': pass,
      });
}
