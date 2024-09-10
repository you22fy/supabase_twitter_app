import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/app_user.dart';
import '../repositories/user_repository.dart';
import 'current_user_provider.dart';

part 'app_user_provider.g.dart';

@Riverpod(keepAlive: true)
Future<AppUserModel> appUserNotifier(AppUserNotifierRef ref) async {
  final currentUser = ref.watch(currentUserNotifierProvider);
  if (currentUser == null) {
    throw Exception('User is not signed in');
  }
  final appUser = await UserRepository().getUserInfo(currentUser.id);
  return appUser;
}
