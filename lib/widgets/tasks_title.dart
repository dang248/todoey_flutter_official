import 'package:flutter/material.dart';

class TasksTitle extends StatefulWidget {
  @override
  State<TasksTitle> createState() => _TasksTitleState();
}

class _TasksTitleState extends State<TasksTitle> {
  bool isCheck = false;
  void checkboxCallback(bool checkBoxState) {
    setState(() {
      isCheck = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isCheck,
        toggleCheckboxState: checkboxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  bool checkBoxState = false;
  void Function(bool?) toggleCheckboxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
      value: checkBoxState,
    );
  }
}
