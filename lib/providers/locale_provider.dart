import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../l10n/l10n.dart';
import '../utils/pref_key.dart';
import '../utils/shared_preference_instance.dart';

part 'locale_provider.g.dart';

/// 現在のロケール（言語情報）を提供する
///
/// デフォルトでは端末の設定に従い、ユーザーが明示的に変更を行なった場合はその値が参照されるようになる。
///
@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  final prefs = SharedPreferencesInstance().prefs;
  @override
  Locale build() {
    final system = WidgetsBinding.instance.platformDispatcher.locale;
    final loaded = prefs.getString(PrefKey.locale);
    final locale = loaded == null ? system : Locale(loaded);
    return locale;
  }

  /// localeを更新する
  Future<void> setLocale(Locale locale) async {
    if (L10n.supportedLocales.contains(locale)) {
      await prefs.setString(PrefKey.locale, locale.languageCode);
      state = locale;
    } else {
      throw Exception('Unsupported language code');
    }
  }
}
