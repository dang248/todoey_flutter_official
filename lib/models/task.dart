import 'package:flutter/material.dart';

class Task {
  String name;
  bool isDone = false;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone!;
  }
}
