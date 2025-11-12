// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get createYourFreeAccount => 'أنشئ حسابك المجاني';

  @override
  String get letStartAnAmazingJourney => 'لنبدأ رحلة مذهلة!';

  @override
  String get continueWithGoogle => 'المتابعة مع غوغل';

  @override
  String get continueWithEmail => 'المتابعة مع الايميل';

  @override
  String get or => 'أو';

  @override
  String get bySigningUpYouAgree => 'بتسجيل الدخول انت توافق على ';

  @override
  String get termsOfService => 'Terms Of Service';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get and => 'و';

  @override
  String get stayOrganizedWith => 'ابق منظمًا مع';

  @override
  String get yourWorkEmail => 'البريد الإلكتروني الخاص بالعمل';

  @override
  String get yourPassword => 'كلمة مرورك';

  @override
  String passwordsMustHaveAtLeastCharacters(Object number) {
    return 'كلمة السر يجب أن تحتوي على الأقل على $number أحرف';
  }

  @override
  String get passwordsMustHaveAtLeastOneUppercase =>
      'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل (\'أ\'-\'ي\').';

  @override
  String get passwordsMustHaveAtLeastOneNumber =>
      'يجب أن تحتوي كلمة المرور على حرف رقم على الأقل.';

  @override
  String get passwordsMustHaveAtLeastOneLowercase =>
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل (\'أ\'-\'ي\').';

  @override
  String get confirmPassword => 'تأكيد كلمة السر';

  @override
  String get notEnoughStrong => 'ليست قوية بما فيه الكفاية';

  @override
  String get yourCompanyOrTeamName => 'اسم شركتك او فريقك';

  @override
  String get yourFirstName => 'اسمك الأول';

  @override
  String get yourLastName => 'اسمك الأخير';

  @override
  String get workspaceName => 'Workspace name*';

  @override
  String get enterYourFirstName => 'ادخل اسمك الأول';

  @override
  String get enterYourLastName => 'ادخل اسمك الأخير';

  @override
  String get enterYourCompanyName => 'ادخل اسم شركتك';

  @override
  String get theTenantNameMustBeEntered => 'يجب إدخال اسم المستأجر.';

  @override
  String get theTenantNameMustBeginWithLetterOfTheAlphabet =>
      'يجب أن يبدأ اسم المستأجر بحرف أبجدي.';

  @override
  String get tenantAlreadyExists => 'المستاجر موجود بالفعل';

  @override
  String get createWorkspace => 'إنشاء مساحة عمل';
}
