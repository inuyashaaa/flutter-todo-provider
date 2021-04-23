import 'dart:collection';

import 'package:flutter/material.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Huy Manh', isDone: false),
    Task(name: 'Mot ngay dep troi', isDone: true),
    Task(name: 'Knowing is not enough, we must apply', isDone: false),
    Task(name: 'Willing is not enough, we must do', isDone: true),
    Task(name: 'A person who never made a mistake never tried anything new', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
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
