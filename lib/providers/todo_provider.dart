import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverporlearn/model/todo_model.dart';

part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  @override
  List<TodoModel> build() {
    return [
      TodoModel(id: 1, title: 'Buy groceries', completed: false),
      TodoModel(id: 2, title: 'Clean the house', completed: false),
      TodoModel(id: 3, title: 'Work on project', completed: false)
    ];
  }

  void addTodo(TodoModel todo) {
    state = [...state, todo];
  }

  void toggleTodo(int id, bool isCompleted) {
    state = state
        .map(
          (todo) =>
              todo.id == id ? todo.copyWith(completed: isCompleted) : todo,
        )
        .toList();
  }
}
