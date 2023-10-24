import 'package:api_example/controllers/todo_controller.dart';
import 'package:api_example/model/todo.dart';
import 'package:api_example/widgets/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo>? todos;

  @override
  void initState() {
    final todoController = Provider.of<TodoController>(context, listen: false);
    todoController.getAll().then((value) => setState(() => todos = value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (todos == null) {
      return const Center(child: Text("Carregando..."));
    } else {
      return ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: todos!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => TodoTile(todo: todos![index]),
      );
    }
  }
}
