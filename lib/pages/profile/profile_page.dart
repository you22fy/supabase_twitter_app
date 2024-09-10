import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/buttons/mini_button.dart';
import '../../components/screen/error_screen.dart';
import '../../components/screen/loading_screen.dart';
import '../../l10n/l10n.dart';
import '../../providers/app_user_provider.dart';
import 'profile_page_controller.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage(this.id, {super.key});
  final String id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUserAsyncValue = ref.watch(appUserNotifierProvider);
    final appUser = appUserAsyncValue.value;

    final state = ref.watch(profilePageNotifierProvider);

    if (appUser == null) {
      return ErrorScreen(
        message: L10n.of(context)!.errorMessage,
        onRetry: () {
          context.go('/');
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          state.when(
            data: (user) {
              final isMyPage = appUser.id == user.id;
              return Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: user.iconUrl != null
                                ? NetworkImage(user.iconUrl!)
                                : null,
                            radius: 40,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              L10n.of(context)!.notSet,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (!isMyPage) ...[
                            const Spacer(),
                            MiniButton.outlined(
                              text: L10n.of(context)!.edit,
                              onPressed: () {
                                debugPrint('edit');
                              },
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          user.profile ?? '',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const LoadingScreen(),
            error: (e, s) => ErrorScreen(
              message: L10n.of(context)!.errorMessage,
              onRetry: () {
                context.go('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
