import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/Todoey_App/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "buy egg", isDone: false),
    Task(name: "buy milk", isDone: false),
    Task(name: "buy meat", isDone: false),
    Task(name: "buy chicken", isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
