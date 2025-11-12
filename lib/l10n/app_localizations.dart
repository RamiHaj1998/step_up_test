import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @createYourFreeAccount.
  ///
  /// In ar, this message translates to:
  /// **'أنشئ حسابك المجاني'**
  String get createYourFreeAccount;

  /// No description provided for @letStartAnAmazingJourney.
  ///
  /// In ar, this message translates to:
  /// **'لنبدأ رحلة مذهلة!'**
  String get letStartAnAmazingJourney;

  /// No description provided for @continueWithGoogle.
  ///
  /// In ar, this message translates to:
  /// **'المتابعة مع غوغل'**
  String get continueWithGoogle;

  /// No description provided for @continueWithEmail.
  ///
  /// In ar, this message translates to:
  /// **'المتابعة مع الايميل'**
  String get continueWithEmail;

  /// No description provided for @or.
  ///
  /// In ar, this message translates to:
  /// **'أو'**
  String get or;

  /// No description provided for @bySigningUpYouAgree.
  ///
  /// In ar, this message translates to:
  /// **'بتسجيل الدخول انت توافق على '**
  String get bySigningUpYouAgree;

  /// No description provided for @termsOfService.
  ///
  /// In ar, this message translates to:
  /// **'Terms Of Service'**
  String get termsOfService;

  /// No description provided for @privacyPolicy.
  ///
  /// In ar, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @and.
  ///
  /// In ar, this message translates to:
  /// **'و'**
  String get and;

  /// No description provided for @stayOrganizedWith.
  ///
  /// In ar, this message translates to:
  /// **'ابق منظمًا مع'**
  String get stayOrganizedWith;

  /// No description provided for @yourWorkEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني الخاص بالعمل'**
  String get yourWorkEmail;

  /// No description provided for @yourPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرورك'**
  String get yourPassword;

  /// No description provided for @passwordsMustHaveAtLeastCharacters.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر يجب أن تحتوي على الأقل على {number} أحرف'**
  String passwordsMustHaveAtLeastCharacters(Object number);

  /// No description provided for @passwordsMustHaveAtLeastOneUppercase.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل (\'أ\'-\'ي\').'**
  String get passwordsMustHaveAtLeastOneUppercase;

  /// No description provided for @passwordsMustHaveAtLeastOneNumber.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن تحتوي كلمة المرور على حرف رقم على الأقل.'**
  String get passwordsMustHaveAtLeastOneNumber;

  /// No description provided for @passwordsMustHaveAtLeastOneLowercase.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل (\'أ\'-\'ي\').'**
  String get passwordsMustHaveAtLeastOneLowercase;

  /// No description provided for @confirmPassword.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة السر'**
  String get confirmPassword;

  /// No description provided for @notEnoughStrong.
  ///
  /// In ar, this message translates to:
  /// **'ليست قوية بما فيه الكفاية'**
  String get notEnoughStrong;

  /// No description provided for @yourCompanyOrTeamName.
  ///
  /// In ar, this message translates to:
  /// **'اسم شركتك او فريقك'**
  String get yourCompanyOrTeamName;

  /// No description provided for @yourFirstName.
  ///
  /// In ar, this message translates to:
  /// **'اسمك الأول'**
  String get yourFirstName;

  /// No description provided for @yourLastName.
  ///
  /// In ar, this message translates to:
  /// **'اسمك الأخير'**
  String get yourLastName;

  /// No description provided for @workspaceName.
  ///
  /// In ar, this message translates to:
  /// **'Workspace name*'**
  String get workspaceName;

  /// No description provided for @enterYourFirstName.
  ///
  /// In ar, this message translates to:
  /// **'ادخل اسمك الأول'**
  String get enterYourFirstName;

  /// No description provided for @enterYourLastName.
  ///
  /// In ar, this message translates to:
  /// **'ادخل اسمك الأخير'**
  String get enterYourLastName;

  /// No description provided for @enterYourCompanyName.
  ///
  /// In ar, this message translates to:
  /// **'ادخل اسم شركتك'**
  String get enterYourCompanyName;

  /// No description provided for @theTenantNameMustBeEntered.
  ///
  /// In ar, this message translates to:
  /// **'يجب إدخال اسم المستأجر.'**
  String get theTenantNameMustBeEntered;

  /// No description provided for @theTenantNameMustBeginWithLetterOfTheAlphabet.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن يبدأ اسم المستأجر بحرف أبجدي.'**
  String get theTenantNameMustBeginWithLetterOfTheAlphabet;

  /// No description provided for @tenantAlreadyExists.
  ///
  /// In ar, this message translates to:
  /// **'المستاجر موجود بالفعل'**
  String get tenantAlreadyExists;

  /// No description provided for @createWorkspace.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء مساحة عمل'**
  String get createWorkspace;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
