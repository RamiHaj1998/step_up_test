class PasswordComplexitySetting {
  final Result? result;
  final dynamic targetUrl;
  final bool? success;
  final dynamic error;
  final bool? unAuthorizedRequest;
  final bool? abp;

  PasswordComplexitySetting({
    this.result,
    this.targetUrl,
    this.success,
    this.error,
    this.unAuthorizedRequest,
    this.abp,
  });

  factory PasswordComplexitySetting.fromJson(Map<String, dynamic> json) =>
      PasswordComplexitySetting(
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
        targetUrl: json["targetUrl"],
        success: json["success"],
        error: json["error"],
        unAuthorizedRequest: json["unAuthorizedRequest"],
        abp: json["__abp"],
      );

  Map<String, dynamic> toJson() => {
        "result": result?.toJson(),
        "targetUrl": targetUrl,
        "success": success,
        "error": error,
        "unAuthorizedRequest": unAuthorizedRequest,
        "__abp": abp,
      };
}

class Result {
  final Setting? setting;

  Result({
    this.setting,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        setting:
            json["setting"] == null ? null : Setting.fromJson(json["setting"]),
      );

  Map<String, dynamic> toJson() => {
        "setting": setting?.toJson(),
      };
}

class Setting {
  final bool? requireDigit;
  final bool? requireLowercase;
  final bool? requireNonAlphanumeric;
  final bool? requireUppercase;
  final num? requiredLength;

  Setting({
    this.requireDigit,
    this.requireLowercase,
    this.requireNonAlphanumeric,
    this.requireUppercase,
    this.requiredLength,
  });

  factory Setting.fromJson(Map<String, dynamic> json) => Setting(
        requireDigit: json["requireDigit"],
        requireLowercase: json["requireLowercase"],
        requireNonAlphanumeric: json["requireNonAlphanumeric"],
        requireUppercase: json["requireUppercase"],
        requiredLength: json["requiredLength"],
      );

  Map<String, dynamic> toJson() => {
        "requireDigit": requireDigit,
        "requireLowercase": requireLowercase,
        "requireNonAlphanumeric": requireNonAlphanumeric,
        "requireUppercase": requireUppercase,
        "requiredLength": requiredLength,
      };
}

class Features {
  Features();

  factory Features.fromJson(Map<String, dynamic> json) => Features();

  Map<String, dynamic> toJson() => {};
}
