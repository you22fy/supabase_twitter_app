import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../models/tweet.dart';

class TweetsListView extends HookConsumerWidget {
  const TweetsListView(this.tweets, {required this.onRefresh, super.key});

  final List<Tweet> tweets;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        children: tweets.map((tweet) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                tweet.users.iconUrl ?? 'https://picsum.photos/100',
              ),
              radius: 32,
            ),
            title: Text(tweet.content),
            subtitle: Text(tweet.users.nickname),
            trailing: Text(
              DateFormat('MM/dd HH:mm').format(
                tweet.createdAt,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
