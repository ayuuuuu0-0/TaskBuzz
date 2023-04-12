import 'package:flutter/material.dart';
import 'package:task_buzz/Widgets/Tasks_Tile.dart';
import 'package:provider/provider.dart';
import 'package:task_buzz/Models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child)
    {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longpressCallback: () {
              taskData.deleteTask(task);
          },
          );
        },
        itemCount: taskData.taskCount,
      );
    },
    );
  }
}