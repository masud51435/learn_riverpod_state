import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/model/todo_model.dart';
import 'package:riverporlearn/providers/todo_provider.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo items'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return Column(
            children: [
              TextFormField(
                controller: titleController,
                onFieldSubmitted: (value) {
                  ref.read(todoProvider.notifier).addTodo(
                        TodoModel(
                          id: ref.read(todoProvider).length + 1,
                          title: value,
                          completed: false,
                        ),
                      );

                  titleController.clear();
                },
                decoration: const InputDecoration(
                  labelText: 'Enter a new todo item',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ref.read(todoProvider).isEmpty
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: ref.watch(todoProvider).length,
                        itemBuilder: (BuildContext context, int index) {
                          final todo = ref.read(todoProvider)[index];
                          return ListTile(
                            leading: Text(todo.id.toString()),
                            title: Text(
                              todo.title,
                              style: TextStyle(
                                decoration: todo.completed
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                            trailing: Checkbox(
                              value: todo.completed,
                              onChanged: (value) => ref
                                  .read(todoProvider.notifier)
                                  .toggleTodo(todo.id, value!),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
