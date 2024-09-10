// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserNotifierHash() =>
    r'99704eaca558aa67515a8e5709539794854d559d';

/// See also [currentUserNotifier].
@ProviderFor(currentUserNotifier)
final currentUserNotifierProvider = Provider<User?>.internal(
  currentUserNotifier,
  name: r'currentUserNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserNotifierRef = ProviderRef<User?>;
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
