import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get password => '(computer) password';

  @override
  String get confirmPassword => 'Password Confirmation';

  @override
  String get mail => 'Email Address';

  @override
  String get signIn => 'Login';

  @override
  String get signUp => 'New Registration';

  @override
  String get logout => 'logout';

  @override
  String get license => 'License';

  @override
  String get notSet => 'unset';

  @override
  String get profile => 'Profile';

  @override
  String get themeMode => 'theme';

  @override
  String get language => 'Language';

  @override
  String get errorMessage => 'An error has occurred. Please try again in a few minutes.';

  @override
  String get edit => 'editing';

  @override
  String get tweets => 'tweet';

  @override
  String get likes => 'Great.';

  @override
  String get tweetHintText => 'What are you doing now?';

  @override
  String get selectLanguage => 'Language Selection';

  @override
  String get selectLanguageCaution => 'When you change the language, the display language of the application is immediately switched.';

  @override
  String get close => 'close (e.g. book, eyes, meeting, etc.)';

  @override
  String get postTweet => 'tweet';
}
