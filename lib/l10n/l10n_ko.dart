import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class L10nKo extends L10n {
  L10nKo([String locale = 'ko']) : super(locale);

  @override
  String get password => '비밀번호';

  @override
  String get confirmPassword => '비밀번호 확인';

  @override
  String get mail => '이메일 주소';

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '신규 등록';

  @override
  String get logout => '로그아웃';

  @override
  String get license => '라이선스';

  @override
  String get notSet => '미설정';

  @override
  String get profile => '프로필';

  @override
  String get themeMode => '테마';

  @override
  String get language => '언어';

  @override
  String get errorMessage => '오류가 발생했습니다. 시간을 두고 다시 시도해 주세요.';

  @override
  String get edit => '편집';

  @override
  String get tweets => '트윗';

  @override
  String get likes => '좋아요';
}
