// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) {
  return _AppUserModel.fromJson(json);
}

/// @nodoc
mixin _$AppUserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String? get iconUrl => throw _privateConstructorUsedError;

  /// Serializes this AppUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUserModelCopyWith<AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res, AppUserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String? nickname,
      String? profile,
      @JsonKey(name: 'icon_url') String? iconUrl});
}

/// @nodoc
class _$AppUserModelCopyWithImpl<$Res, $Val extends AppUserModel>
    implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? nickname = freezed,
    Object? profile = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserModelImplCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$$AppUserModelImplCopyWith(
          _$AppUserModelImpl value, $Res Function(_$AppUserModelImpl) then) =
      __$$AppUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String? nickname,
      String? profile,
      @JsonKey(name: 'icon_url') String? iconUrl});
}

/// @nodoc
class __$$AppUserModelImplCopyWithImpl<$Res>
    extends _$AppUserModelCopyWithImpl<$Res, _$AppUserModelImpl>
    implements _$$AppUserModelImplCopyWith<$Res> {
  __$$AppUserModelImplCopyWithImpl(
      _$AppUserModelImpl _value, $Res Function(_$AppUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? nickname = freezed,
    Object? profile = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_$AppUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserModelImpl with DiagnosticableTreeMixin implements _AppUserModel {
  const _$AppUserModelImpl(
      {required this.id,
      required this.email,
      required this.nickname,
      required this.profile,
      @JsonKey(name: 'icon_url') required this.iconUrl});

  factory _$AppUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? nickname;
  @override
  final String? profile;
  @override
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserModel(id: $id, email: $email, nickname: $nickname, profile: $profile, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('profile', profile))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, nickname, profile, iconUrl);

  /// Create a copy of AppUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      __$$AppUserModelImplCopyWithImpl<_$AppUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserModelImplToJson(
      this,
    );
  }
}

abstract class _AppUserModel implements AppUserModel {
  const factory _AppUserModel(
          {required final String id,
          required final String email,
          required final String? nickname,
          required final String? profile,
          @JsonKey(name: 'icon_url') required final String? iconUrl}) =
      _$AppUserModelImpl;

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$AppUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get nickname;
  @override
  String? get profile;
  @override
  @JsonKey(name: 'icon_url')
  String? get iconUrl;

  /// Create a copy of AppUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
