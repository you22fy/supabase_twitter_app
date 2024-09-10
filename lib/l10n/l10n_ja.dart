import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get password => 'パスワード';

  @override
  String get confirmPassword => 'パスワード確認';

  @override
  String get mail => 'メールアドレス';

  @override
  String get signIn => 'ログイン';

  @override
  String get signUp => '新規登録';

  @override
  String get logout => 'ログアウト';

  @override
  String get license => 'ライセンス';
}
