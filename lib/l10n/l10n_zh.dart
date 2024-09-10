import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class L10nZh extends L10n {
  L10nZh([String locale = 'zh']) : super(locale);

  @override
  String get password => '密码';

  @override
  String get confirmPassword => '密码验证';

  @override
  String get mail => '电子邮件地址';

  @override
  String get signIn => '登录';

  @override
  String get signUp => '新注册';
}
