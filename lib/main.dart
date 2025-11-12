import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:step_up_test/core/cubit/locale/locale_cubit.dart';
import 'package:step_up_test/core/cubit/locale/locale_state.dart';
import 'package:step_up_test/core/di/injection_container.dart' as di;

import 'core/di/injection_container.dart';
import 'core/utils/configs/theme/theme_manager.dart';
import 'core/utils/constant.dart';
import 'core/utils/routing/router.dart';
import 'l10n/app_localizations.dart';
import 'l10n/l10n.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

void main() async {
  await initialize();
  runApp(const MyApp());
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.preConfigure();
  await di.configure();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 829),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<LocaleCubit>(create: (_) => getIt<LocaleCubit>())
          ],
          child: GestureDetector(
            onTap: () => WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
            child: Builder(builder: (context) {
              final LocaleCubit localeCubit =
                  BlocProvider.of<LocaleCubit>(context);
              return BlocBuilder<LocaleCubit, LocaleState>(
                bloc: localeCubit,
                builder: (context, state) {
                  return MaterialApp.router(
                    builder: FToastBuilder(),
                    title: Constant.appName,
                    debugShowCheckedModeBanner: false,
                    theme: getApplicationTheme,
                    locale: localeCubit.locale,
                    supportedLocales: L10n.all,
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate
                    ],
                    routerConfig: router,
                  );
                },
              );
            }),
          ),
        );
      },
    );
  }
}
