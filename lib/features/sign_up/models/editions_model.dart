class EditionsModel {
  final Result? result;
  final dynamic targetUrl;
  final bool? success;
  final dynamic error;
  final bool? unAuthorizedRequest;
  final bool? abp;

  EditionsModel({
    this.result,
    this.targetUrl,
    this.success,
    this.error,
    this.unAuthorizedRequest,
    this.abp,
  });

  factory EditionsModel.fromJson(Map<String, dynamic> json) => EditionsModel(
    result: json["result"] == null ? null : Result.fromMap(json["result"]),
    targetUrl: json["targetUrl"],
    success: json["success"],
    error: json["error"],
    unAuthorizedRequest: json["unAuthorizedRequest"],
    abp: json["__abp"],
  );

  Map<String, dynamic> toMap() => {
    "result": result?.toMap(),
    "targetUrl": targetUrl,
    "success": success,
    "error": error,
    "unAuthorizedRequest": unAuthorizedRequest,
    "__abp": abp,
  };
}

class Result {
  final List<AllFeature>? allFeatures;
  final List<EditionsWithFeature>? editionsWithFeatures;
  final dynamic tenantEditionId;

  Result({
    this.allFeatures,
    this.editionsWithFeatures,
    this.tenantEditionId,
  });

  factory Result.fromMap(Map<String, dynamic> json) => Result(
    allFeatures: json["allFeatures"] == null ? [] : List<AllFeature>.from(json["allFeatures"]!.map((x) => AllFeature.fromMap(x))),
    editionsWithFeatures: json["editionsWithFeatures"] == null ? [] : List<EditionsWithFeature>.from(json["editionsWithFeatures"]!.map((x) => EditionsWithFeature.fromMap(x))),
    tenantEditionId: json["tenantEditionId"],
  );

  Map<String, dynamic> toMap() => {
    "allFeatures": allFeatures == null ? [] : List<dynamic>.from(allFeatures!.map((x) => x.toMap())),
    "editionsWithFeatures": editionsWithFeatures == null ? [] : List<dynamic>.from(editionsWithFeatures!.map((x) => x.toMap())),
    "tenantEditionId": tenantEditionId,
  };
}

class AllFeature {
  final String? name;
  final dynamic parentName;
  final String? displayName;
  final String? description;
  final String? defaultValue;
  final Metadata? metadata;
  final InputType? inputType;

  AllFeature({
    this.name,
    this.parentName,
    this.displayName,
    this.description,
    this.defaultValue,
    this.metadata,
    this.inputType,
  });

  factory AllFeature.fromMap(Map<String, dynamic> json) => AllFeature(
    name: json["name"],
    parentName: json["parentName"],
    displayName: json["displayName"],
    description: json["description"],
    defaultValue: json["defaultValue"],
    metadata: json["metadata"] == null ? null : Metadata.fromMap(json["metadata"]),
    inputType: json["inputType"] == null ? null : InputType.fromMap(json["inputType"]),
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "parentName": parentName,
    "displayName": displayName,
    "description": description,
    "defaultValue": defaultValue,
    "metadata": metadata?.toMap(),
    "inputType": inputType?.toMap(),
  };
}

class InputType {
  final String? name;
  final InputTypeAttributes? attributes;
  final Validator? validator;
  final dynamic itemSource;

  InputType({
    this.name,
    this.attributes,
    this.validator,
    this.itemSource,
  });

  factory InputType.fromMap(Map<String, dynamic> json) => InputType(
    name: json["name"],
    attributes: json["attributes"] == null ? null : InputTypeAttributes.fromMap(json["attributes"]),
    validator: json["validator"] == null ? null : Validator.fromMap(json["validator"]),
    itemSource: json["itemSource"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "attributes": attributes?.toMap(),
    "validator": validator?.toMap(),
    "itemSource": itemSource,
  };
}

class InputTypeAttributes {
  InputTypeAttributes();

  factory InputTypeAttributes.fromMap(Map<String, dynamic> json) => InputTypeAttributes(
  );

  Map<String, dynamic> toMap() => {
  };
}

class Validator {
  final String? name;
  final ValidatorAttributes? attributes;
  final num? minValue;
  final num? maxValue;

  Validator({
    this.name,
    this.attributes,
    this.minValue,
    this.maxValue,
  });

  factory Validator.fromMap(Map<String, dynamic> json) => Validator(
    name: json["name"],
    attributes: json["attributes"] == null ? null : ValidatorAttributes.fromMap(json["attributes"]),
    minValue: json["minValue"],
    maxValue: json["maxValue"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "attributes": attributes?.toMap(),
    "minValue": minValue,
    "maxValue": maxValue,
  };
}

class ValidatorAttributes {
  final num? minValue;
  final num? maxValue;

  ValidatorAttributes({
    this.minValue,
    this.maxValue,
  });

  factory ValidatorAttributes.fromMap(Map<String, dynamic> json) => ValidatorAttributes(
    minValue: json["MinValue"],
    maxValue: json["MaxValue"],
  );

  Map<String, dynamic> toMap() => {
    "MinValue": minValue,
    "MaxValue": maxValue,
  };
}

class Metadata {
  final num? dataType;
  final bool? isVisibleOnPricingTable;
  final bool? isVisibleOnTenantSubscription;

  Metadata({
    this.dataType,
    this.isVisibleOnPricingTable,
    this.isVisibleOnTenantSubscription,
  });

  factory Metadata.fromMap(Map<String, dynamic> json) => Metadata(
    dataType: json["dataType"],
    isVisibleOnPricingTable: json["isVisibleOnPricingTable"],
    isVisibleOnTenantSubscription: json["isVisibleOnTenantSubscription"],
  );

  Map<String, dynamic> toMap() => {
    "dataType": dataType,
    "isVisibleOnPricingTable": isVisibleOnPricingTable,
    "isVisibleOnTenantSubscription": isVisibleOnTenantSubscription,
  };
}

class EditionsWithFeature {
  final Edition? edition;
  final List<FeatureValue>? featureValues;

  EditionsWithFeature({
    this.edition,
    this.featureValues,
  });

  factory EditionsWithFeature.fromMap(Map<String, dynamic> json) => EditionsWithFeature(
    edition: json["edition"] == null ? null : Edition.fromMap(json["edition"]),
    featureValues: json["featureValues"] == null ? [] : List<FeatureValue>.from(json["featureValues"]!.map((x) => FeatureValue.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "edition": edition?.toMap(),
    "featureValues": featureValues == null ? [] : List<dynamic>.from(featureValues!.map((x) => x.toMap())),
  };

  @override
  String toString() {
    return 'EditionsWithFeature{edition: $edition, featureValues: $featureValues}';
  }
}

class Edition {
  final String? name;
  final String? displayName;
  final String? publicDescription;
  final dynamic numernalDescription;
  final bool? isPublished;
  final bool? isRegistrable;
  final num? type;
  final num? minimumUsersCount;
  final num? monthlyPrice;
  final num? annualPrice;
  final num? waitingDayAfterExpire;
  final num? trialDayCount;
  final num? countAllowExtendTrial;
  final bool? hasTrial;
  final bool? disableWorkspaceAfterExpire;
  final bool? isMostPopular;
  final dynamic doNotSendVerifyEmail;
  final ExpiringEdition? expiringEdition;
  final dynamic seatsText;
  final dynamic buttonText;
  final dynamic buttonLink;
  final dynamic starterLineText;
  final dynamic editionColor;
  final num? id;

  Edition({
    this.name,
    this.displayName,
    this.publicDescription,
    this.numernalDescription,
    this.isPublished,
    this.isRegistrable,
    this.type,
    this.minimumUsersCount,
    this.monthlyPrice,
    this.annualPrice,
    this.waitingDayAfterExpire,
    this.trialDayCount,
    this.countAllowExtendTrial,
    this.hasTrial,
    this.disableWorkspaceAfterExpire,
    this.isMostPopular,
    this.doNotSendVerifyEmail,
    this.expiringEdition,
    this.seatsText,
    this.buttonText,
    this.buttonLink,
    this.starterLineText,
    this.editionColor,
    this.id,
  });

  factory Edition.fromMap(Map<String, dynamic> json) => Edition(
    name: json["name"],
    displayName: json["displayName"],
    publicDescription: json["publicDescription"],
    numernalDescription: json["numernalDescription"],
    isPublished: json["isPublished"],
    isRegistrable: json["isRegistrable"],
    type: json["type"],
    minimumUsersCount: json["minimumUsersCount"],
    monthlyPrice: json["monthlyPrice"],
    annualPrice: json["annualPrice"],
    waitingDayAfterExpire: json["waitingDayAfterExpire"],
    trialDayCount: json["trialDayCount"],
    countAllowExtendTrial: json["countAllowExtendTrial"],
    hasTrial: json["hasTrial"],
    disableWorkspaceAfterExpire: json["disableWorkspaceAfterExpire"],
    isMostPopular: json["isMostPopular"],
    doNotSendVerifyEmail: json["doNotSendVerifyEmail"],
    expiringEdition: json["expiringEdition"] == null ? null : ExpiringEdition.fromMap(json["expiringEdition"]),
    seatsText: json["seatsText"],
    buttonText: json["buttonText"],
    buttonLink: json["buttonLink"],
    starterLineText: json["starterLineText"],
    editionColor: json["editionColor"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "displayName": displayName,
    "publicDescription": publicDescription,
    "numernalDescription": numernalDescription,
    "isPublished": isPublished,
    "isRegistrable": isRegistrable,
    "type": type,
    "minimumUsersCount": minimumUsersCount,
    "monthlyPrice": monthlyPrice,
    "annualPrice": annualPrice,
    "waitingDayAfterExpire": waitingDayAfterExpire,
    "trialDayCount": trialDayCount,
    "countAllowExtendTrial": countAllowExtendTrial,
    "hasTrial": hasTrial,
    "disableWorkspaceAfterExpire": disableWorkspaceAfterExpire,
    "isMostPopular": isMostPopular,
    "doNotSendVerifyEmail": doNotSendVerifyEmail,
    "expiringEdition": expiringEdition?.toMap(),
    "seatsText": seatsText,
    "buttonText": buttonText,
    "buttonLink": buttonLink,
    "starterLineText": starterLineText,
    "editionColor": editionColor,
    "id": id,
  };

  @override
  String toString() {
    return 'Edition{name: $name, displayName: $displayName, publicDescription: $publicDescription, internalDescription: $numernalDescription, isPublished: $isPublished, isRegistrable: $isRegistrable, type: $type, minimumUsersCount: $minimumUsersCount, monthlyPrice: $monthlyPrice, annualPrice: $annualPrice, waitingDayAfterExpire: $waitingDayAfterExpire, trialDayCount: $trialDayCount, countAllowExtendTrial: $countAllowExtendTrial, hasTrial: $hasTrial, disableWorkspaceAfterExpire: $disableWorkspaceAfterExpire, isMostPopular: $isMostPopular, doNotSendVerifyEmail: $doNotSendVerifyEmail, expiringEdition: $expiringEdition, seatsText: $seatsText, buttonText: $buttonText, buttonLink: $buttonLink, starterLineText: $starterLineText, editionColor: $editionColor, id: $id}';
  }
}

class ExpiringEdition {
  final String? name;
  final String? displayName;
  final num? id;

  ExpiringEdition({
    this.name,
    this.displayName,
    this.id,
  });

  factory ExpiringEdition.fromMap(Map<String, dynamic> json) => ExpiringEdition(
    name: json["name"],
    displayName: json["displayName"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "displayName": displayName,
    "id": id,
  };
}

class FeatureValue {
  final String? name;
  final String? value;

  FeatureValue({
    this.name,
    this.value,
  });

  factory FeatureValue.fromMap(Map<String, dynamic> json) => FeatureValue(
    name: json["name"],
    value: json["value"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "value": value,
  };
}
