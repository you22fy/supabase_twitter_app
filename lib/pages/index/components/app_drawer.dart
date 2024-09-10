import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../providers/app_user_provider.dart';
import '../../../repositories/user_repository.dart';
import 'language_select_dialog.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(appUserNotifierProvider);
    return Drawer(
      child: ListView(
        children: [
          appUser.when(
            data: (u) {
              return _UserInfo(
                iconUrl: u.iconUrl,
                nickname: u.nickname,
                profile: u.profile,
              );
            },
            error: (e, s) => const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(L10n.of(context)!.profile),
            onTap: () {
              context.push('/profile/0');
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(L10n.of(context)!.language),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (context) => const LanguageSelectorDialog(),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: Text(L10n.of(context)!.themeMode),
            onTap: () {
              debugPrint('themeMode');
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit_document),
            title: Text(L10n.of(context)!.license),
            onTap: () {
              context.push('/license');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              L10n.of(context)!.logout,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () async {
              await UserRepository().signOut();
            },
          ),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    required this.iconUrl,
    required this.nickname,
    required this.profile,
  });
  final String? iconUrl;
  final String? nickname;
  final String? profile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 16,
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          CircleAvatar(
            backgroundImage: iconUrl != null
                ? NetworkImage(
                    iconUrl!,
                  )
                : null,
            radius: 32,
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nickname ?? L10n.of(context)!.notSet,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  profile ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
