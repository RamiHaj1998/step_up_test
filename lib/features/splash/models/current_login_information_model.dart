class CurrentLoginInformationModel {
  final Result? result;
  final dynamic targetUrl;
  final bool? success;
  final dynamic error;
  final bool? unAuthorizedRequest;
  final bool? abp;

  CurrentLoginInformationModel({
    this.result,
    this.targetUrl,
    this.success,
    this.error,
    this.unAuthorizedRequest,
    this.abp,
  });

  factory CurrentLoginInformationModel.fromJson(Map<String, dynamic> json) =>
      CurrentLoginInformationModel(
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
  final dynamic user;
  final dynamic tenant;
  final Application? application;

  Result({
    this.user,
    this.tenant,
    this.application,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        user: json["user"],
        tenant: json["tenant"],
        application: json["application"] == null
            ? null
            : Application.fromJson(json["application"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "tenant": tenant,
        "application": application?.toJson(),
      };
}

class Application {
  final String? version;
  final DateTime? releaseDate;
  final String? currency;
  final String? currencySign;
  final bool? userDelegationIsEnabled;
  final Features? features;
  final String? compatibleMobileClientVersion;
  final String? compatibleWebClientVersion;

  Application({
    this.version,
    this.releaseDate,
    this.currency,
    this.currencySign,
    this.userDelegationIsEnabled,
    this.features,
    this.compatibleMobileClientVersion,
    this.compatibleWebClientVersion,
  });

  factory Application.fromJson(Map<String, dynamic> json) => Application(
        version: json["version"],
        releaseDate: json["releaseDate"] == null
            ? null
            : DateTime.parse(json["releaseDate"]),
        currency: json["currency"],
        currencySign: json["currencySign"],
        userDelegationIsEnabled: json["userDelegationIsEnabled"],
        features: json["features"] == null
            ? null
            : Features.fromJson(json["features"]),
        compatibleMobileClientVersion: json["compatibleMobileClientVersion"],
        compatibleWebClientVersion: json["compatibleWebClientVersion"],
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "releaseDate": releaseDate?.toIso8601String(),
        "currency": currency,
        "currencySign": currencySign,
        "userDelegationIsEnabled": userDelegationIsEnabled,
        "features": features?.toJson(),
        "compatibleMobileClientVersion": compatibleMobileClientVersion,
        "compatibleWebClientVersion": compatibleWebClientVersion,
      };
}

class Features {
  Features();

  factory Features.fromJson(Map<String, dynamic> json) => Features();

  Map<String, dynamic> toJson() => {};
}
