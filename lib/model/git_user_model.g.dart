// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitUserModelImpl _$$GitUserModelImplFromJson(Map<String, dynamic> json) =>
    _$GitUserModelImpl(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      node_id: json['node_id'] as String?,
      avatar_url: json['avatar_url'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$$GitUserModelImplToJson(_$GitUserModelImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.node_id,
      'avatar_url': instance.avatar_url,
      'type': instance.type,
      'url': instance.url,
      'html_url': instance.html_url,
    };
