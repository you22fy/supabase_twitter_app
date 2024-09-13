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

  @override
  String get notSet => '未設定';

  @override
  String get profile => 'プロフィール';

  @override
  String get themeMode => 'テーマ';

  @override
  String get language => '言語';

  @override
  String get errorMessage => 'エラーが発生しました。時間をおいて再度お試しください。';

  @override
  String get edit => '編集';

  @override
  String get tweets => 'ツイート';

  @override
  String get likes => 'いいね';

  @override
  String get tweetHintText => 'いまどうしてる？';

  @override
  String get selectLanguage => '言語選択';

  @override
  String get selectLanguageCaution => '※ 言語を変更すると、アプリの表示言語が即時に切り替わります。';

  @override
  String get close => '閉じる';

  @override
  String get postTweet => 'ツイート';

  @override
  String get deleteTweet => 'ツイートを削除';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';
}
