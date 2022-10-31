import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Buy eggs', isDone: true)
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateCheckBox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void update2(bool newValue2, Task task) {
    task.isDone = newValue2;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
