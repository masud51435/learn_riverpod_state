import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../model/pull_to_refresh_model.dart';
part 'pull_to_refresh_provider.g.dart';

@riverpod
Future<PullToRefreshModel> refreshActivity(RefreshActivityRef ref) async {
  final response = await http.get(
    Uri.https('www.boredapi.com', '/api/activity'),
  );
  final json = jsonDecode(response.body);
  return PullToRefreshModel.fromJson(Map.from(json));
}
