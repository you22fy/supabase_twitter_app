// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetImpl _$$TweetImplFromJson(Map<String, dynamic> json) => _$TweetImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      users: TweetUser.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetImplToJson(_$TweetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'users': instance.users,
    };

_$TweetUserImpl _$$TweetUserImplFromJson(Map<String, dynamic> json) =>
    _$TweetUserImpl(
      iconUrl: json['icon_url'] as String?,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$TweetUserImplToJson(_$TweetUserImpl instance) =>
    <String, dynamic>{
      'icon_url': instance.iconUrl,
      'nickname': instance.nickname,
    };
