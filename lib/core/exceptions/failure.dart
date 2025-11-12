import 'error_handler.dart';

class Failure {
  int code; // 200 or 400
  String message; // error or success
  // String description;
  dynamic error;

  String? errorName;
  String? errorDescription;
  String? codeError;

  Failure(this.code, this.message,
      {this.errorName, this.errorDescription, this.codeError});

  factory Failure.fromMap(Map<String, dynamic> data) {
    return Failure(
      data['code'] ?? ResponseCode.DEFAULT,
      data['message'] ?? '',
      errorName: data['errorName'],
      errorDescription: data['errorDescription'],
      codeError: data['codeError'],
    );
  }

  Map<String, dynamic> toMap() => {
        'code': code,
        'message': message,
        'errorName': errorName,
        'errorDescription': errorDescription,
        'codeError': codeError,
      };
}
