import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/app_drawer.dart';
import 'components/tweet_modal.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Page'),
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text('Index Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const TweetModal();
            },
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
