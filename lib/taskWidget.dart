import 'package:flutter/material.dart';
import 'package:state/models/task.dart';

class TaskWidget extends StatelessWidget {
  Task currentTask;
  Function(int) onTogglePressed;
  Function(int) onDeletePressed;

  TaskWidget(
      {required this.currentTask,
      required this.onDeletePressed,
      required this.onTogglePressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
          onPressed: () {
            onTogglePressed(currentTask.id);
          },
          icon: currentTask.done ? Icon(Icons.check_box) : Icon(Icons.check)),
      title: Text(
        currentTask.text,
        style: TextStyle(
            decoration: currentTask.done
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: IconButton(
          onPressed: () {
            // print("in Child");
            onDeletePressed(currentTask.id);
          },
          icon: Icon(Icons.delete)),
    );
  }
}
