import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class L10nZh extends L10n {
  L10nZh([String locale = 'zh']) : super(locale);

  @override
  String get helloWorld => '世界你好';

  @override
  String get sample_string => '我叫山田太郎！';
}
