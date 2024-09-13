import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/screen/error_screen.dart';
import '../../components/screen/loading_screen.dart';
import 'components/app_drawer.dart';
import 'components/tweet_modal.dart';
import 'components/tweets_list_view.dart';
import 'index_page_controller.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(indexPageNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Page'),
      ),
      drawer: const AppDrawer(),
      body: switch (state) {
        AsyncData(:final value) => TweetsListView(
            value,
            onRefresh: () async {
              ref.invalidate(indexPageNotifierProvider);
            },
          ),
        AsyncError(:final error) => ErrorScreen(
            message: error.toString(),
            onRetry: () {
              ref.invalidate(indexPageNotifierProvider);
            },
          ),
        AsyncLoading() => const LoadingScreen(),
        _ => const SizedBox.shrink(),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return TweetModal(
                onPosted: (String content) async {
                  await ref
                      .read(indexPageNotifierProvider.notifier)
                      .postTweet(content);
                },
              );
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
