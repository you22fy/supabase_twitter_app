import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet.freezed.dart';
part 'tweet.g.dart';

@freezed
class Tweet with _$Tweet {
  const factory Tweet({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required TweetUser users,
  }) = _Tweet;

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);
}

@freezed
class TweetUser with _$TweetUser {
  const factory TweetUser({
    @JsonKey(name: 'icon_url') required String? iconUrl,
    required String nickname,
  }) = _TweetUser;

  factory TweetUser.fromJson(Map<String, dynamic> json) =>
      _$TweetUserFromJson(json);
}
