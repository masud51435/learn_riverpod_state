import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_user_model.freezed.dart';
part 'git_user_model.g.dart';

@freezed
class GitUserModel with _$GitUserModel {
  const factory GitUserModel({
    String? login,
    int? id,
    String? node_id,
    String? avatar_url,
    String? type,
    String? url,
    String? html_url,
  }) = _GitUserModel;

  factory GitUserModel.fromJson(Map<String, dynamic> json) =>
      _$GitUserModelFromJson(json);
}
