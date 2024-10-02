// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitUserModel _$GitUserModelFromJson(Map<String, dynamic> json) {
  return _GitUserModel.fromJson(json);
}

/// @nodoc
mixin _$GitUserModel {
  String? get login => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get node_id => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;

  /// Serializes this GitUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitUserModelCopyWith<GitUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitUserModelCopyWith<$Res> {
  factory $GitUserModelCopyWith(
          GitUserModel value, $Res Function(GitUserModel) then) =
      _$GitUserModelCopyWithImpl<$Res, GitUserModel>;
  @useResult
  $Res call(
      {String? login,
      int? id,
      String? node_id,
      String? avatar_url,
      String? type,
      String? url,
      String? html_url});
}

/// @nodoc
class _$GitUserModelCopyWithImpl<$Res, $Val extends GitUserModel>
    implements $GitUserModelCopyWith<$Res> {
  _$GitUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? node_id = freezed,
    Object? avatar_url = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: freezed == node_id
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitUserModelImplCopyWith<$Res>
    implements $GitUserModelCopyWith<$Res> {
  factory _$$GitUserModelImplCopyWith(
          _$GitUserModelImpl value, $Res Function(_$GitUserModelImpl) then) =
      __$$GitUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login,
      int? id,
      String? node_id,
      String? avatar_url,
      String? type,
      String? url,
      String? html_url});
}

/// @nodoc
class __$$GitUserModelImplCopyWithImpl<$Res>
    extends _$GitUserModelCopyWithImpl<$Res, _$GitUserModelImpl>
    implements _$$GitUserModelImplCopyWith<$Res> {
  __$$GitUserModelImplCopyWithImpl(
      _$GitUserModelImpl _value, $Res Function(_$GitUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? node_id = freezed,
    Object? avatar_url = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_$GitUserModelImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: freezed == node_id
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitUserModelImpl implements _GitUserModel {
  const _$GitUserModelImpl(
      {this.login,
      this.id,
      this.node_id,
      this.avatar_url,
      this.type,
      this.url,
      this.html_url});

  factory _$GitUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitUserModelImplFromJson(json);

  @override
  final String? login;
  @override
  final int? id;
  @override
  final String? node_id;
  @override
  final String? avatar_url;
  @override
  final String? type;
  @override
  final String? url;
  @override
  final String? html_url;

  @override
  String toString() {
    return 'GitUserModel(login: $login, id: $id, node_id: $node_id, avatar_url: $avatar_url, type: $type, url: $url, html_url: $html_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitUserModelImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.node_id, node_id) || other.node_id == node_id) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.html_url, html_url) ||
                other.html_url == html_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, login, id, node_id, avatar_url, type, url, html_url);

  /// Create a copy of GitUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitUserModelImplCopyWith<_$GitUserModelImpl> get copyWith =>
      __$$GitUserModelImplCopyWithImpl<_$GitUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitUserModelImplToJson(
      this,
    );
  }
}

abstract class _GitUserModel implements GitUserModel {
  const factory _GitUserModel(
      {final String? login,
      final int? id,
      final String? node_id,
      final String? avatar_url,
      final String? type,
      final String? url,
      final String? html_url}) = _$GitUserModelImpl;

  factory _GitUserModel.fromJson(Map<String, dynamic> json) =
      _$GitUserModelImpl.fromJson;

  @override
  String? get login;
  @override
  int? get id;
  @override
  String? get node_id;
  @override
  String? get avatar_url;
  @override
  String? get type;
  @override
  String? get url;
  @override
  String? get html_url;

  /// Create a copy of GitUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitUserModelImplCopyWith<_$GitUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
