// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get createYourFreeAccount => 'Create your free account';

  @override
  String get letStartAnAmazingJourney => 'Let\'s start an amazing journey!';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get continueWithEmail => 'Continue with email';

  @override
  String get or => 'Or';

  @override
  String get bySigningUpYouAgree => 'By signing up, you agree ';

  @override
  String get termsOfService => 'Terms Of Service';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get and => 'And';

  @override
  String get stayOrganizedWith => 'Stay organized with';

  @override
  String get yourWorkEmail => 'Your work email';

  @override
  String get yourPassword => 'Your password';

  @override
  String passwordsMustHaveAtLeastCharacters(Object number) {
    return 'Passwords must have at least $number characters';
  }

  @override
  String get passwordsMustHaveAtLeastOneUppercase =>
      'Passwords must have at least one uppercase (\'A\'-\'Z\').';

  @override
  String get passwordsMustHaveAtLeastOneNumber =>
      'Passwords must have at least one number';

  @override
  String get passwordsMustHaveAtLeastOneLowercase =>
      'Passwords must have at least one lowercase (\'a\'-\'z\').';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get notEnoughStrong => 'Not enough strong';

  @override
  String get yourCompanyOrTeamName => 'Your company or team name';

  @override
  String get yourFirstName => 'Your first name';

  @override
  String get yourLastName => 'Your last name';

  @override
  String get workspaceName => 'Workspace name*';

  @override
  String get enterYourFirstName => 'Enter your First name';

  @override
  String get enterYourLastName => 'Enter your Last name';

  @override
  String get enterYourCompanyName => 'Enter your company name';

  @override
  String get theTenantNameMustBeEntered =>
      'The tenant\'s name must be entered.';

  @override
  String get theTenantNameMustBeginWithLetterOfTheAlphabet =>
      'The tenant\'s name must begin with a letter of the alphabet.';

  @override
  String get tenantAlreadyExists => 'Tenant already exists';

  @override
  String get createWorkspace => 'Create Workspace';
}
