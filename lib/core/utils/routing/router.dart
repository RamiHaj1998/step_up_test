import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/utils/routing/routes/enter_company_route.dart';
import 'package:step_up_test/core/utils/routing/routes/sign_up_route.dart';
import 'package:step_up_test/core/utils/routing/routes/splash_route.dart';
import 'package:step_up_test/core/utils/routing/routes/success_route.dart';
import 'package:step_up_test/main.dart';

import 'routes/enter_password_route.dart';

final router = GoRouter(
  navigatorKey: navigator,
  initialLocation: SplashRoute.name,
  debugLogDiagnostics: true,
  // errorBuilder: (context, state) => Scaffold(
  //   body: ErrorPage(
  //     withBack: true,
  //     onRetry: () => context.goNamed(HomeRoute.name),
  //     failure: Failure(404, S.current.thisPageIsNotAvailable,
  //         errorDescription: S.current.thisPageIsNotAvailable),
  //   ),
  // ),
  routes: <RouteBase>[
    SplashRoute().create(
      path: SplashRoute.path,
      name: SplashRoute.name,
    ),
    SignUpRoute().create(
      path: SignUpRoute.path,
      name: SignUpRoute.name,
    ),
    EnterPasswordRoute().create(
      path: EnterPasswordRoute.path,
      name: EnterPasswordRoute.name,
    ),
    EnterCompanyRoute().create(
      path: EnterCompanyRoute.path,
      name: EnterCompanyRoute.name,
    ),
    SuccessRoute().create(
      path: SuccessRoute.path,
      name: SuccessRoute.name,
    ),
  ],
);
