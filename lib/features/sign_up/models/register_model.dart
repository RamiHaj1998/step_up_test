class RegisterModel {
  RegisterModel({
    this.result,
  });

  final RegisterResult? result;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        result: json["result"] == null
            ? null
            : RegisterResult.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result?.toMap(),
      };
}

class RegisterResult {
  final num? tenantId;
  final String? tenancyName;
  final String? name;
  final String? userName;
  final String? emailAddress;
  final bool? isTenantActive;
  final bool? isActive;
  final bool? isEmailConfirmationRequired;

  RegisterResult(
      {this.tenantId,
      this.tenancyName,
      this.name,
      this.userName,
      this.emailAddress,
      this.isTenantActive,
      this.isActive,
      this.isEmailConfirmationRequired});

  factory RegisterResult.fromJson(Map<String, dynamic> json) => RegisterResult(
        tenantId: json["tenantId"],
        tenancyName: json["tenancyName"],
        name: json["name"],
        userName: json["userName"],
        emailAddress: json["emailAddress"],
        isTenantActive: json["isTenantActive"],
        isActive: json["isActive"],
        isEmailConfirmationRequired: json["isEmailConfirmationRequired"],
      );

  Map<String, dynamic> toMap() => {
        "tenantId": tenantId,
        "tenancyName": tenancyName,
        "name": name,
        "userName": userName,
        "emailAddress": emailAddress,
        "isTenantActive": isTenantActive,
        "isActive": isActive,
        "isEmailConfirmationRequired": isEmailConfirmationRequired,
      };
}
