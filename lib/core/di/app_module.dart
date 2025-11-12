import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:step_up_test/core/utils/constant.dart';

import 'interceptors/app_interceptor.dart';

@module
abstract class AppModule {
  @factoryMethod
  Dio buildDio(@Named('BaseUrl') String baseUrl) {
    final aDio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: Constant.connectTimeout),
        receiveTimeout: const Duration(milliseconds: Constant.receiveTimeout),
        sendTimeout: const Duration(milliseconds: Constant.sendTimeout),
      ),
    );

    aDio.interceptors.add(AppInterceptor(dio: aDio));

    aDio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return aDio;
  }
}
