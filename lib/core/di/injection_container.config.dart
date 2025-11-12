// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:step_up_test/core/cubit/locale/locale_cubit.dart' as _i872;
import 'package:step_up_test/core/di/app_module.dart' as _i118;
import 'package:step_up_test/core/repositories/authentication/authentication_repository.dart'
    as _i468;
import 'package:step_up_test/core/repositories/authentication/authentication_repository_impl.dart'
    as _i160;
import 'package:step_up_test/core/services/authentication/authenticate_services.dart'
    as _i458;
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart'
    as _i1034;
import 'package:step_up_test/features/sign_up/cubit/sign_up_cubit.dart'
    as _i498;
import 'package:step_up_test/features/sign_up/repositories/sign_up_repository.dart'
    as _i279;
import 'package:step_up_test/features/sign_up/repositories/sign_up_repository_impl.dart'
    as _i931;
import 'package:step_up_test/features/sign_up/services/sign_up_services.dart'
    as _i405;
import 'package:step_up_test/features/splash/cubit/splash_cubit.dart' as _i505;
import 'package:step_up_test/features/splash/repositories/splash_repository.dart'
    as _i793;
import 'package:step_up_test/features/splash/repositories/splash_repository_impl.dart'
    as _i962;
import 'package:step_up_test/features/splash/services/splash_services.dart'
    as _i19;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i872.LocaleCubit>(() => _i872.LocaleCubit());
    gh.factory<_i361.Dio>(
        () => appModule.buildDio(gh<String>(instanceName: 'BaseUrl')));
    gh.singleton<_i1034.AppColors>(() => _i1034.LightAppColors());
    gh.lazySingleton<_i405.SignUpServices>(
        () => _i405.SignUpServices(gh<_i361.Dio>()));
    gh.lazySingleton<_i19.SplashService>(
        () => _i19.SplashService(gh<_i361.Dio>()));
    gh.lazySingleton<_i458.AuthenticateServices>(
        () => _i458.AuthenticateServices(gh<_i361.Dio>()));
    gh.singleton<_i279.SignUpRepository>(
        () => _i931.SignUpRepositoryImpl(gh<_i405.SignUpServices>()));
    gh.singleton<_i793.SplashRepository>(
        () => _i962.SplashRepositoryImp(gh<_i19.SplashService>()));
    gh.singleton<_i468.AuthenticationRepository>(() =>
        _i160.AuthenticationRepositoryImpl(gh<_i458.AuthenticateServices>()));
    gh.factory<_i505.SplashCubit>(
        () => _i505.SplashCubit(gh<_i793.SplashRepository>()));
    gh.factory<_i498.SignUpCubit>(() => _i498.SignUpCubit(
          gh<_i279.SignUpRepository>(),
          gh<_i468.AuthenticationRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i118.AppModule {}
