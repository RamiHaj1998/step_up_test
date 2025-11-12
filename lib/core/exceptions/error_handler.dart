import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'failure.dart';

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
  NOT_ACTIVE,
  TOO_MANY_REQUEST,
  UNPROCESSABLE_ENTITY
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its error from response of the API
      debugPrint(error.toString());
      failure = _handleError(error);
      failure.error = error;
      if(error.response?.statusCode!=ResponseCode.INTERNAL_SERVER_ERROR&&error.response?.statusCode!=ResponseCode.NOT_FOUND){
        failure.errorDescription= error.response?.data['error_description'];
        failure.errorName= error.response?.data['error'];
        failure.codeError= error.response?.data['code'];}
    } else {
      // default error
      failure = DataSource.NO_INTERNET_CONNECTION.getFailure();
    }
  }

  Failure _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DataSource.CONNECT_TIMEOUT.getFailure();
      case DioExceptionType.sendTimeout:
        return DataSource.SEND_TIMEOUT.getFailure();
      case DioExceptionType.receiveTimeout:
        return DataSource.RECEIVE_TIMEOUT.getFailure();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case ResponseCode.BAD_REQUEST:
            return DataSource.BAD_REQUEST.getFailure();
          case ResponseCode.FORBIDDEN:
            return DataSource.FORBIDDEN.getFailure();
          case ResponseCode.UNAUTHORISED:
            return DataSource.UNAUTHORISED.getFailure();
          case ResponseCode.NOT_FOUND:
            return DataSource.NOT_FOUND.getFailure();
          case ResponseCode.INTERNAL_SERVER_ERROR:
            return DataSource.INTERNAL_SERVER_ERROR.getFailure();
          case ResponseCode.NOT_ACTIVE:
            return DataSource.NOT_ACTIVE.getFailure();
          case ResponseCode.TOO_MANY_REQUEST:
            return DataSource.TOO_MANY_REQUEST.getFailure();
          case ResponseCode.UNPROCESSABLE_ENTITY:
            return DataSource.UNPROCESSABLE_ENTITY.getFailure();
          default:
            return DataSource.DEFAULT.getFailure();
        }
      case DioExceptionType.cancel:
        return DataSource.CANCEL.getFailure();
      case DioExceptionType.connectionError:
        return DataSource.NO_INTERNET_CONNECTION.getFailure();
      case DioExceptionType.unknown:
      default:
        return DataSource.DEFAULT.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.BAD_REQUEST:
        return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
      case DataSource.UNPROCESSABLE_ENTITY:
        return Failure(ResponseCode.UNPROCESSABLE_ENTITY,
            ResponseMessage.UNPROCESSABLE_ENTITY);
      case DataSource.FORBIDDEN:
        return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTHORISED:
        return Failure(ResponseCode.UNAUTHORISED, ResponseMessage.UNAUTHORISED);
      case DataSource.NOT_FOUND:
        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(ResponseCode.INTERNAL_SERVER_ERROR,
            ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.CONNECT_TIMEOUT:
        return Failure(
            ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);
      case DataSource.RECEIVE_TIMEOUT:
        return Failure(
            ResponseCode.RECEIVE_TIMEOUT, ResponseMessage.RECEIVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return Failure(ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION,
            ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
      case DataSource.NOT_ACTIVE:
        return Failure(ResponseCode.NOT_ACTIVE, ResponseMessage.NOT_ACTIVE);
      case DataSource.TOO_MANY_REQUEST:
        return Failure(
            ResponseCode.TOO_MANY_REQUEST, ResponseMessage.TOO_MANY_REQUEST);
      default:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
    }
  }
}

class ResponseCode {
  // API status codes
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no content
  static const int BAD_REQUEST = 400; // failure, api rejected the request
  static const int FORBIDDEN = 403; // failure, api rejected the request
  static const int UNAUTHORISED = 401; // failure user is not authorised
  static const int TOO_MANY_REQUEST = 429;
  static const int NOT_FOUND =
  404; // failure, api url is not correct and not found
  static const int NOT_ACTIVE = 412;
  static const int UNPROCESSABLE_ENTITY = 422;
  static const int INTERNAL_SERVER_ERROR =
  500; // failure, crash happened in server side

  // local status code
  static const int DEFAULT = -1;
  static const int CONNECT_TIMEOUT = -2;
  static const int CANCEL = -3;
  static const int RECEIVE_TIMEOUT = -4;
  static const int SEND_TIMEOUT = -5;
  static const int CACHE_ERROR = -6;
  static const int NO_INTERNET_CONNECTION = -7;
  static const int PAYMENT_FAILED = -8;
}

class ResponseMessage {
  // API status codes
  static const String SUCCESS = "msg_success"; // success with data
  static const String NO_CONTENT =
      "msg_no_content"; // success with no content
  static const String BAD_REQUEST =
      "msg_bad_request"; // failure, api rejected the request
  static const String FORBIDDEN =
      "msg_forbidden"; // failure, api rejected the request
  static const String UNAUTHORISED =
      "msg_unauthorised"; // failure user is not authorised
  static const String NOT_FOUND =
      "msg_not_found"; // failure, api url is not correct and not found
  static const String INTERNAL_SERVER_ERROR = "msg_something_wrong";
  static const String NOT_ACTIVE =
      "msg_not_active"; // failure, crash happened in server side
  static const String TOO_MANY_REQUEST = "msg_too_many_req";
  static const String UNPROCESSABLE_ENTITY =
      "msg_unprocessable_entity";
  // local status code
  static const String DEFAULT = "msg_default";
  static const String CONNECT_TIMEOUT = "msg_connection_out";
  static const String CANCEL = "msg_cancel";
  static const String RECEIVE_TIMEOUT = "msg_connection_out";
  static const String SEND_TIMEOUT = "msg_connection_out";
  static const String CACHE_ERROR = "msg_cache_error";
  static const String NO_INTERNET_CONNECTION = "msg_not_internet";
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
