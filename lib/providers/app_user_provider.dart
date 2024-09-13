import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/app_user.dart';
import '../repositories/user_repository.dart';
import 'current_user_session.dart';

part 'app_user_provider.g.dart';

/// 現在ログインしているユーザーの情報を提供する
///
/// 未ログイン時にこのproviderを参照すると例外をスローする
@Riverpod(keepAlive: true)
Future<AppUserModel> appUserNotifier(AppUserNotifierRef ref) async {
  final currentUser = ref.watch(currentUserSessionProvider);
  if (currentUser == null) {
    throw Exception('User is not signed in');
  }
  final appUser = await UserRepository().getUserInfo(currentUser.id);
  return appUser;
}
