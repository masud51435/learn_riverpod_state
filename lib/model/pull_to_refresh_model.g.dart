// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_to_refresh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PullToRefreshModelImpl _$$PullToRefreshModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PullToRefreshModelImpl(
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: (json['participants'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$PullToRefreshModelImplToJson(
        _$PullToRefreshModelImpl instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
    };
