import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../l10n/l10n.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  Locale build() {
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    return locale;
  }

  void setLocale(Locale locale) {
    if (L10n.supportedLocales.contains(locale)) {
      state = locale;
    } else {
      throw Exception('Unsupported language code');
    }
  }
}
