import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:provider/provider.dart';
import 'package:to_do_with_provider/mdoel/to_do.dart';
import 'package:to_do_with_provider/utils/constants.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({
    required this.todo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Slidable(
      key: Key(todo.id.toString()),
      startActionPane: const ActionPane(
        motion: ScrollMotion(), children: [
          SlidableAction(onPressed: null,
            label: 'Edit',
            backgroundColor: Colors.green,
            icon: Icons.edit,
          ),
      ],
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(), children: [
        SlidableAction(onPressed: null,
          label: 'Delete',
          flex: 2,
          backgroundColor: Colors.red,
          icon: Icons.delete,
        ),
      ],
      ),
      child: buildTodo(context),
    ),
  );

  Widget buildTodo(BuildContext context) => Container(
    color: Colors.white,
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Checkbox(
          activeColor: Theme.of(context).primaryColor,
          checkColor: primary,
          value: todo.isDone,
          onChanged: (_) {},
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                todo.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 22,
                ),
              ),
              if (todo.description.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    todo.description,
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                )
            ],
          ),
        ),
      ],
    ),
  );
}