import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => 'こんにちは 世界!';

  @override
  String get sample_string => '私の名前は山田太郎です！';
}
