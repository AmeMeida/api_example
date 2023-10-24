class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromMap(Map<String, dynamic> map) => Todo(
      id: map["id"],
      userId: map["userId"],
      title: map["title"],
      completed: map["completed"]);
}
