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

  @override
  String get logout => '注销';

  @override
  String get license => '许可';

  @override
  String get notSet => '彷徨';

  @override
  String get profile => '简介';

  @override
  String get themeMode => '主题';

  @override
  String get language => '语言';

  @override
  String get errorMessage => '发生错误。请稍后再试。';

  @override
  String get edit => '编辑';

  @override
  String get tweets => '鸣叫';

  @override
  String get likes => '很好。';

  @override
  String get tweetHintText => '你现在怎么样？';

  @override
  String get selectLanguage => '语言选择';

  @override
  String get selectLanguageCaution => '更改语言可立即切换应用程序的显示语言。';

  @override
  String get close => '贴近';

  @override
  String get postTweet => '鸣叫';

  @override
  String get deleteTweet => '删除的推文';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删减';
}
