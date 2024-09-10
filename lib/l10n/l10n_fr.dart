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

  @override
  String get errorMessage => 'Une erreur s\'est produite. Veuillez réessayer après un certain temps.';

  @override
  String get edit => 'édition';

  @override
  String get tweets => 'tweet';

  @override
  String get likes => 'Bon.';

  @override
  String get tweetHintText => 'Comment allez-vous maintenant ?';

  @override
  String get selectLanguage => 'Sélection de la langue';

  @override
  String get selectLanguageCaution => 'Le changement de langue modifie immédiatement la langue d\'affichage de l\'application.';

  @override
  String get close => 'proche (par ex. livre, yeux, rencontre, etc.)';
}
