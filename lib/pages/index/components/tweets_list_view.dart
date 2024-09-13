import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../models/tweet.dart';

class TweetsListView extends HookConsumerWidget {
  const TweetsListView(
    this.tweets, {
    required this.onRefresh,
    required this.onDelete,
    super.key,
  });

  final List<Tweet> tweets;
  final Future<void> Function() onRefresh;
  final Future<void> Function(String id) onDelete;

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
            onLongPress: () async {
              await showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Delete this tweet?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          await onDelete(tweet.id);
                          if (!context.mounted) {
                            return;
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Delete'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
