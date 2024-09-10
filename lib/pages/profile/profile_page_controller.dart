import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/app_user.dart';

part 'profile_page_controller.g.dart';

@riverpod
class ProfilePageNotifier extends _$ProfilePageNotifier {
  @override
  Future<AppUserModel> build() async {
    return const AppUserModel(
      id: 'id',
      email: 'email',
      nickname: 'nickname',
      profile: 'profile',
      iconUrl: 'https://picsum.photos/200',
    );
  }
}
