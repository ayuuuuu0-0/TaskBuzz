import 'package:flutter/foundation.dart';
import 'package:task_buzz/Models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milks'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy fruits'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks); 
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String myTaskTitle){
    final task = Task(name: myTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}