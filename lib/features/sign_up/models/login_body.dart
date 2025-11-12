class LoginBody {
  LoginBody({
    this.ianaTimeZone,
    this.password,
    this.rememberClient,
    this.returnUrl,
    this.singleSignIn,
    this.tenantName,
    this.userNameOrEmailAddress,
  });

  final String? ianaTimeZone;
  final String? password;
  final bool? rememberClient;
  final String? returnUrl;
  final bool? singleSignIn;
  final String? tenantName;
  final String? userNameOrEmailAddress;

  Map<String, dynamic> toJson() => {
        'IanaTimeZone': ianaTimeZone,
        'password': password,
        'rememberClient': rememberClient,
        'returnUrl': returnUrl,
        'singleSignIn': singleSignIn,
        'tenantName': tenantName,
        'userNameOrEmailAddress': userNameOrEmailAddress,
      };
}
