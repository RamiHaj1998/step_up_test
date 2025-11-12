import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/utils/constant.dart';

import 'locale_state.dart';

@singleton
class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(const LocaleState.initial());

  Locale _locale = Constant.englishLocale;

  Locale get locale => _locale;

  Future changeLocale({required Locale updatedLocale}) async {
    _locale = Locale.fromSubtags(
        countryCode: updatedLocale.countryCode,
        languageCode: updatedLocale.languageCode);

    emit(LocaleState.localeChanged(_locale));
  }
}
