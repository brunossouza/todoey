import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks {
    return [..._tasks];
  }

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
