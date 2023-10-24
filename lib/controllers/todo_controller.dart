import 'dart:convert';
import 'package:api_example/api.dart';
import 'package:http/http.dart' as http;
import 'package:api_example/model/todo.dart';
import 'package:flutter/material.dart';

class TodoController with ChangeNotifier {
  Future<Todo> getById(int id) async {
    final response = await http.get(Uri.https(baseUrl, "todos/$id"));
    return Todo.fromMap(jsonDecode(response.body));
  }

  Future<List<Todo>> getAll() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    return (jsonDecode(response.body) as List<dynamic>).map((todoMap) => Todo.fromMap(todoMap)).toList();
  }
}
