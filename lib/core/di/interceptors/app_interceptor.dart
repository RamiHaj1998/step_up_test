import 'dart:developer';

import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  Dio dio;

  AppInterceptor({required this.dio});

  @override
  void onRequest(RequestOptions options,
      RequestInterceptorHandler handler) async {

    // TODO: add 'Authorization' key here when authentication is implemented
    // if (boxesRepositoryImpl.getUser()?.token != null) {
    //   options.headers['Authorization'] =
    //       'Bearer ';
    // }
    // options.headers["lang"] = 'ar';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      log("shouldRefresh");
    }
    super.onError(err, handler);
  }
}
