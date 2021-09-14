import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todoey_app/model/task.dart';

import 'SharedPref.dart';

class TaskData extends ChangeNotifier {
  
  List<Task> _tasks = [
    Task(name: "Buy a milk"),
    Task(name: "Buy a tea"),
    Task(name: "Buy a remote"),
  ];


  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }



  int get taskCount {
    return _tasks.length;
  }

  void addTask(String data) {
    _tasks.add(Task(name: data),);
    notifyListeners();
  }

  void updateTask(Task task){
     task.toggleTask();
     notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
