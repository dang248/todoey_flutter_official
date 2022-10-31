import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_official/widgets/tasks_title.dart';
import 'package:todoey_flutter_official/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTitle(
              isCheck: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (newValue) {
                // taskData.updateCheckBox(taskData.tasks[index]);
                taskData.update2(newValue!, taskData.tasks[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount);
    });
  }
}
