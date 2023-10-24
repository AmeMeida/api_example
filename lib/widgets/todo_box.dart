import 'package:api_example/model/todo.dart';
import 'package:flutter/material.dart';

class TodoBox extends StatelessWidget {
  final Todo todo;
  const TodoBox({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Text(todo.id.toString()),
          Text(todo.title),
          Text(todo.userId.toString()),
          Text(todo.completed.toString()),
        ],
      ),
    );
  }
}