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
}
