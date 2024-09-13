import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'current_user_session.g.dart';

/// ユーザがサインインしているかどうかを判定する
/// 実際のユーザーデータは[AppUserNotifierProvider]で取得する
@Riverpod(keepAlive: true)
User? currentUserSession(CurrentUserSessionRef ref) {
  final asyncState = ref.watch(currentUserStreamProvider);
  switch (asyncState) {
    case AsyncData(:final value):
      return value.session?.user;
    case AsyncLoading():
      return null;
    case AsyncError(:final error):
      throw Exception(error);
    default:
      return null;
  }
}

@Riverpod(keepAlive: true)
Stream<AuthState> currentUserStream(CurrentUserStreamRef ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
}
