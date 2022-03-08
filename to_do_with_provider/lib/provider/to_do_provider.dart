import 'package:flutter/cupertino.dart';
import 'package:to_do_with_provider/mdoel/to_do.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Food 😋',
      description: '''- Eggs
- Milk
- Bread
- Water''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the Dog 🐕',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}