import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/tweet.dart';

class TweetRepository {
  Future<List<Tweet>> getTweets() async {
    final supabase = Supabase.instance.client;
    final response = await supabase
        .from('tweets')
        .select('*, users!inner(nickname, icon_url)')
        .limit(50)
        .order(
          'created_at',
          ascending: false,
        );

    final ret = response.map(Tweet.fromJson).toList();

    return ret;
  }
}
