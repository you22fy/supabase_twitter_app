import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class L10nKo extends L10n {
  L10nKo([String locale = 'ko']) : super(locale);

  @override
  String get helloWorld => '안녕하세요 세계여러분!';

  @override
  String get sample_string => '제 이름은 야마다 타로입니다!';
}
