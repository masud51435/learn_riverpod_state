import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/screens/git_user/git_user_screen.dart';
import 'package:riverporlearn/screens/home_page/home_screen.dart';
import 'package:riverporlearn/screens/pull_to_refresh/pull_to_refresh.dart';
import 'package:riverporlearn/screens/todo_page/todo_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: GitUserScreen(),
    );
  }
}
