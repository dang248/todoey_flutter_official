import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  bool isCheck = false;
  String taskTitle;
  Function(bool?) checkboxCallback;
  Function() longPressCallback;

  TasksTitle(
      {required this.isCheck,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isCheck ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
          value: isCheck,
        ));
  }
}
