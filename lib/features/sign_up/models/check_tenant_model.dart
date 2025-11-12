class CheckTenantModel {
  final Result? result;
  final dynamic targetUrl;
  final bool? success;
  final dynamic error;
  final bool? unAuthorizedRequest;
  final bool? abp;

  CheckTenantModel({
    this.result,
    this.targetUrl,
    this.success,
    this.error,
    this.unAuthorizedRequest,
    this.abp,
  });

  factory CheckTenantModel.fromJson(Map<String, dynamic> json) =>
      CheckTenantModel(
        result: json["result"] == null ? null : Result.fromMap(json["result"]),
        targetUrl: json["targetUrl"],
        success: json["success"],
        error: json["error"],
        unAuthorizedRequest: json["unAuthorizedRequest"],
        abp: json["__abp"],
      );

  Map<String, dynamic> toJson() => {
        "result": result?.toMap(),
        "targetUrl": targetUrl,
        "success": success,
        "error": error,
        "unAuthorizedRequest": unAuthorizedRequest,
        "__abp": abp,
      };
}

class Result {
  final int? state;
  final dynamic tenantId;
  final dynamic serverRootAddress;
  final dynamic apiUrl;
  final dynamic dnsUrl;

  Result({
    this.state,
    this.tenantId,
    this.serverRootAddress,
    this.apiUrl,
    this.dnsUrl,
  });

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        state: json["state"],
        tenantId: json["tenantId"],
        serverRootAddress: json["serverRootAddress"],
        apiUrl: json["apiUrl"],
        dnsUrl: json["dnsUrl"],
      );

  Map<String, dynamic> toMap() => {
        "state": state,
        "tenantId": tenantId,
        "serverRootAddress": serverRootAddress,
        "apiUrl": apiUrl,
        "dnsUrl": dnsUrl,
      };
}
