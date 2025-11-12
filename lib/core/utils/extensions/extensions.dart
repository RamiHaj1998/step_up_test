import 'package:flutter/material.dart';
import 'package:step_up_test/core/utils/constant.dart';
import 'package:step_up_test/l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
}

extension StringExtension on String {
  String get selectLanguage =>
      this == Constant.englishLocale.languageCode ? 'English' : 'العربية';

  bool get stringContainsUppercase {
    final RegExp uppercaseRegex = RegExp(r'[A-Z]');

    return uppercaseRegex.hasMatch(this);
  }

  bool get stringIsEmail {
    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    return emailRegExp.hasMatch(this);
  }

  bool get stringContainsLowercase {
    final RegExp uppercaseRegex = RegExp(r'[a-z]');

    return uppercaseRegex.hasMatch(this);
  }

  bool get stringContainsNumber {
    final RegExp digitRegex = RegExp(r'\d');

    return digitRegex.hasMatch(this);
  }

  bool get stringStartsWithLetter {
    final RegExp digitRegex = RegExp(r'^[a-zA-Z]');

    return digitRegex.hasMatch(this);
  }
}
