import 'package:api_example/model/todo.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  final Todo todo;
  const TodoTile({super.key, required this.todo});

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(widget.todo.id.toString()),
      title: Text(widget.todo.title),
      trailing: IconButton(
        icon: Icon(widget.todo.completed ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined),
        onPressed: () => setState(() => widget.todo.completed = !widget.todo.completed)),
    );
  }
}
