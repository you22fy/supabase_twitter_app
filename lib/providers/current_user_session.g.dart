// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_session.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserSessionHash() =>
    r'2bae67b3edd7ac8e617846bcf142e9505e353726';

/// ユーザがサインインしているかどうかを判定する
/// 実際のユーザーデータは[AppUserNotifierProvider]で取得する
///
/// Copied from [currentUserSession].
@ProviderFor(currentUserSession)
final currentUserSessionProvider = Provider<User?>.internal(
  currentUserSession,
  name: r'currentUserSessionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserSessionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserSessionRef = ProviderRef<User?>;
String _$currentUserStreamHash() => r'fa4ae15f8356cad8a8dd63c6d7bed0e4460e148b';

/// See also [currentUserStream].
@ProviderFor(currentUserStream)
final currentUserStreamProvider = StreamProvider<AuthState>.internal(
  currentUserStream,
  name: r'currentUserStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserStreamRef = StreamProviderRef<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
