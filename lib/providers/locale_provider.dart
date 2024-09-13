import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../l10n/l10n.dart';

part 'locale_provider.g.dart';

/// 現在のロケール（言語情報）を提供する
///
/// デフォルトでは端末の設定に従い、ユーザーが明示的に変更を行なった場合はその値が参照されるようになる。
///
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
