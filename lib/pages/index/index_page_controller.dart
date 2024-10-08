import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/tweet.dart';
import '../../repositories/tweet_repository.dart';

part 'index_page_controller.g.dart';

@riverpod
class IndexPageNotifier extends _$IndexPageNotifier {
  @override
  Future<List<Tweet>> build() async {
    return _fetchTweets();
  }

  Future<List<Tweet>> _fetchTweets() async {
    return TweetRepository().getTweets();
  }

  Future<void> postTweet(String content) async {
    await TweetRepository().postTweet(content);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetchTweets);
  }

  Future<void> deleteTweet(String id) async {
    await TweetRepository().deleteTweet(id);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetchTweets);
  }
}
