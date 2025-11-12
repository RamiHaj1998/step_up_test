class CheckTenantBody {
  final String tenantName;

  CheckTenantBody({required this.tenantName});

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenantName,
    };
  }
}
