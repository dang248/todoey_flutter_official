import 'package:flutter/material.dart';
import 'package:todoey_flutter_official/widgets/tasks_title.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TasksTitle(), TasksTitle(), TasksTitle()],
    );
  }
}
