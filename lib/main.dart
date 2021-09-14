import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/screens/taskScreen.dart';
import 'model/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (_) => TaskData(),
      child: Consumer<TaskData>(
        builder: (context,taskData,child) =>  MaterialApp(
          home: TaskScreen(),
        ),
      ),
    );
  }
}


