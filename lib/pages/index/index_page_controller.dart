import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/tweet.dart';
import '../../repositories/tweet.dart';

part 'index_page_controller.g.dart';

@riverpod
class IndexPageNotifier extends _$IndexPageNotifier {
  @override
  Future<List<Tweet>> build() async {
    final tweets = await TweetRepository().getTweets();
    return tweets;
  }
}
