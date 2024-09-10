import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get password => 'mot de passe (ordinateur)';

  @override
  String get confirmPassword => 'vérification du mot de passe';

  @override
  String get mail => 'adresse électronique';

  @override
  String get signIn => 'connexion';

  @override
  String get signUp => 'Nouvel enregistrement';

  @override
  String get logout => 'déconnexion';

  @override
  String get license => 'licence';

  @override
  String get notSet => 'déstabilisé';

  @override
  String get profile => 'Profil.';

  @override
  String get themeMode => 'thème';

  @override
  String get language => 'Langue.';
}
