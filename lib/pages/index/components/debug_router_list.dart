import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DebugRouterList extends StatelessWidget {
  const DebugRouterList({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) {
      return const SizedBox.shrink();
    }

    return ListView(
      children: [
        ListTile(
          title: const Text('SignIn'),
          onTap: () {
            context.push('/sign_in');
          },
        ),
        ListTile(
          title: const Text('SignUp'),
          onTap: () {
            context.push('/sign_up');
          },
        ),
        ListTile(
          title: const Text('Profile'),
          onTap: () {
            context.push('/profile/0');
          },
        ),
        ListTile(
          title: const Text('Index'),
          onTap: () {
            context.push('/');
          },
        ),
      ],
    );
  }
}
