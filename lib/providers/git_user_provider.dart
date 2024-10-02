import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../model/git_user_model.dart';
part 'git_user_provider.g.dart';

@riverpod
Future<List<GitUserModel>> gitUser(GitUserRef ref) async {
  final response = await http.get(Uri.parse('https://api.github.com/users'));
  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    List<GitUserModel> users = [
      for (var item in jsonResponse) GitUserModel.fromJson(item)
    ];

    return users;
  } else {
    throw Exception('Failed to load users');
  }
}
