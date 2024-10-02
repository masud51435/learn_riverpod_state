import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_to_refresh_model.freezed.dart';
part 'pull_to_refresh_model.g.dart';

@freezed
class PullToRefreshModel with _$PullToRefreshModel {
  factory PullToRefreshModel({
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _PullToRefreshModel;

  factory PullToRefreshModel.fromJson(Map<String, dynamic> json) =>
      _$PullToRefreshModelFromJson(json);
}
