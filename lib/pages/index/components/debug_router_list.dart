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
          title: const Text('Login'),
          onTap: () {
            context.push('/login');
          },
        ),
        ListTile(
          title: const Text('Register'),
          onTap: () {
            context.push('/register');
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
        ListTile(
          title: const Text('new_post'),
          onTap: () {
            context.push('/new_post');
          },
        ),
        ListTile(
          title: const Text('post_detail'),
          onTap: () {
            context.push('/post_detail/0');
          },
        ),
      ],
    );
  }
}
