import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/routing/routes/sign_up_route.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/features/splash/cubit/splash_cubit.dart';
import 'package:step_up_test/features/splash/cubit/splash_state.dart';
import 'package:step_up_test/features/splash/models/current_login_information_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SplashCubit>(), child: const SplashView());
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(onWidgetStarted);
  }

  void onWidgetStarted(_) async {
    await context.read<SplashCubit>().getCurrentLoginInformation();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getIt<AppColors>().white,
      child: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            state.whenOrNull(success:
                (CurrentLoginInformationModel currentLoginInformationModel) {
              if (currentLoginInformationModel.result?.user == null &&
                  currentLoginInformationModel.result?.tenant == null) {
                context.pushReplacementNamed(SignUpRoute.name);
              }
            });
          },
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AppSvgImage(path: Assets.logo)],
          )),
    );
  }
}
