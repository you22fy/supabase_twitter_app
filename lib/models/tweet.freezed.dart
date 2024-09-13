// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tweet _$TweetFromJson(Map<String, dynamic> json) {
  return _Tweet.fromJson(json);
}

/// @nodoc
mixin _$Tweet {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  TweetUser get users => throw _privateConstructorUsedError;

  /// Serializes this Tweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCopyWith<Tweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res, Tweet>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      TweetUser users});

  $TweetUserCopyWith<$Res> get users;
}

/// @nodoc
class _$TweetCopyWithImpl<$Res, $Val extends Tweet>
    implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as TweetUser,
    ) as $Val);
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetUserCopyWith<$Res> get users {
    return $TweetUserCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetImplCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory _$$TweetImplCopyWith(
          _$TweetImpl value, $Res Function(_$TweetImpl) then) =
      __$$TweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      TweetUser users});

  @override
  $TweetUserCopyWith<$Res> get users;
}

/// @nodoc
class __$$TweetImplCopyWithImpl<$Res>
    extends _$TweetCopyWithImpl<$Res, _$TweetImpl>
    implements _$$TweetImplCopyWith<$Res> {
  __$$TweetImplCopyWithImpl(
      _$TweetImpl _value, $Res Function(_$TweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? users = null,
  }) {
    return _then(_$TweetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as TweetUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetImpl with DiagnosticableTreeMixin implements _Tweet {
  const _$TweetImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.users});

  factory _$TweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final TweetUser users;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tweet(id: $id, userId: $userId, content: $content, createdAt: $createdAt, users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tweet'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.users, users) || other.users == users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, content, createdAt, users);

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetImplCopyWith<_$TweetImpl> get copyWith =>
      __$$TweetImplCopyWithImpl<_$TweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetImplToJson(
      this,
    );
  }
}

abstract class _Tweet implements Tweet {
  const factory _Tweet(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      required final String content,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final TweetUser users}) = _$TweetImpl;

  factory _Tweet.fromJson(Map<String, dynamic> json) = _$TweetImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  TweetUser get users;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetImplCopyWith<_$TweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TweetUser _$TweetUserFromJson(Map<String, dynamic> json) {
  return _TweetUser.fromJson(json);
}

/// @nodoc
mixin _$TweetUser {
  @JsonKey(name: 'icon_url')
  String? get iconUrl => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this TweetUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetUserCopyWith<TweetUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetUserCopyWith<$Res> {
  factory $TweetUserCopyWith(TweetUser value, $Res Function(TweetUser) then) =
      _$TweetUserCopyWithImpl<$Res, TweetUser>;
  @useResult
  $Res call({@JsonKey(name: 'icon_url') String? iconUrl, String nickname});
}

/// @nodoc
class _$TweetUserCopyWithImpl<$Res, $Val extends TweetUser>
    implements $TweetUserCopyWith<$Res> {
  _$TweetUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = freezed,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetUserImplCopyWith<$Res>
    implements $TweetUserCopyWith<$Res> {
  factory _$$TweetUserImplCopyWith(
          _$TweetUserImpl value, $Res Function(_$TweetUserImpl) then) =
      __$$TweetUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'icon_url') String? iconUrl, String nickname});
}

/// @nodoc
class __$$TweetUserImplCopyWithImpl<$Res>
    extends _$TweetUserCopyWithImpl<$Res, _$TweetUserImpl>
    implements _$$TweetUserImplCopyWith<$Res> {
  __$$TweetUserImplCopyWithImpl(
      _$TweetUserImpl _value, $Res Function(_$TweetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = freezed,
    Object? nickname = null,
  }) {
    return _then(_$TweetUserImpl(
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetUserImpl with DiagnosticableTreeMixin implements _TweetUser {
  const _$TweetUserImpl(
      {@JsonKey(name: 'icon_url') required this.iconUrl,
      required this.nickname});

  factory _$TweetUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetUserImplFromJson(json);

  @override
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetUser(iconUrl: $iconUrl, nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetUser'))
      ..add(DiagnosticsProperty('iconUrl', iconUrl))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetUserImpl &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iconUrl, nickname);

  /// Create a copy of TweetUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetUserImplCopyWith<_$TweetUserImpl> get copyWith =>
      __$$TweetUserImplCopyWithImpl<_$TweetUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetUserImplToJson(
      this,
    );
  }
}

abstract class _TweetUser implements TweetUser {
  const factory _TweetUser(
      {@JsonKey(name: 'icon_url') required final String? iconUrl,
      required final String nickname}) = _$TweetUserImpl;

  factory _TweetUser.fromJson(Map<String, dynamic> json) =
      _$TweetUserImpl.fromJson;

  @override
  @JsonKey(name: 'icon_url')
  String? get iconUrl;
  @override
  String get nickname;

  /// Create a copy of TweetUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetUserImplCopyWith<_$TweetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
