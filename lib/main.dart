import 'package:flutter/material.dart';
import 'package:todoey_flutter_official/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: TasksScreen(),
    );
  }
}