class RegisterBody {
  RegisterBody(
      {this.name,
      this.adminEmailAddress,
      this.adminFirstName,
      this.adminLastName,
      this.adminPassword,
      this.editionId,
      this.tenancyName});

  final String? adminEmailAddress;
  final String? adminFirstName;
  final String? adminLastName;
  final String? adminPassword;
  final String? editionId;
  final String? name;
  final String? tenancyName;

  Map<String, dynamic> toJson() {
    return {
      "adminEmailAddress": adminEmailAddress,
      "adminFirstName": adminFirstName,
      "adminLastName": adminLastName,
      "adminPassword": adminPassword,
      "editionId": editionId,
      "name": name,
      "tenancyName": tenancyName,
    };
  }
}
