import 'dart:ui';

class Constant {
  static const String appName = "Step up test";
  static const String baseUrl = "https://api.workiom.club/api/services/app/";

  static const int connectTimeout = 60000;
  static const int receiveTimeout = 60000;
  static const int sendTimeout = 60000;

  static const String ar = 'ar';
  static const String en = 'en';
  static const String enCountryCode = 'US';
  static const String arCountryCode = 'SA';
  static const englishLocale = Locale(en, enCountryCode);
  static const arabicLocale = Locale(ar, arCountryCode);
}
