import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get helloWorld => 'Bonjour à tous !';

  @override
  String get sample_string => 'Je m\'appelle Taro Yamada !';
}
