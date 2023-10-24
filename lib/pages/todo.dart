import 'package:api_example/controllers/todo_controller.dart';
import 'package:api_example/model/todo.dart';
import 'package:api_example/widgets/todo_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  final int id;
  const TodoPage({super.key, required this.id});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  Todo? todo;

  @override
  void initState() {
    final todoController = Provider.of<TodoController>(context);
    todoController.getById(widget.id).then((value) => todo = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: todo == null ? TodoBox(todo: todo!) : const Text("Carregando..."),
      ),
    );
  }
}