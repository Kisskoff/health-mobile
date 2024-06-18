import 'dart:ui';

import 'package:get/get.dart';
import 'language/fr_FR.dart';
import 'language/en_US.dart';

class LocalizationService extends Translations {
  static final local = Locale('en', 'US');
  static final fallBackLocale = Locale('en', 'US');

  static final langs = ['English', 'Français'];

  static final locales = [Locale('en', 'US'), Locale('fr', 'FR')];

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'fr_FR': frFR,
      };

  void changeLocale(String lang) {
    final locale = getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  Locale? getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}
