import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../providers/current_user_provider.dart';
import '../../../repositories/user_repository.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserNotifierProvider);
    if (user == null) {
      context.go('/sign_in');
    }
    return Drawer(
      child: ListView(
        children: [
          const Divider(),
          ListTile(
            title: Text(L10n.of(context)!.license),
            onTap: () {
              context.push('/license');
            },
          ),
          ListTile(
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
