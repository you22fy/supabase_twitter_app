// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appUserNotifierHash() => r'ec4ee0e9318b43f3a0f442f0e10cdee7c0fc9f62';

/// 現在ログインしているユーザーの情報を提供する
///
/// 未ログイン時にこのproviderを参照すると例外をスローする
///
/// Copied from [appUserNotifier].
@ProviderFor(appUserNotifier)
final appUserNotifierProvider = FutureProvider<AppUserModel>.internal(
  appUserNotifier,
  name: r'appUserNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appUserNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppUserNotifierRef = FutureProviderRef<AppUserModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
