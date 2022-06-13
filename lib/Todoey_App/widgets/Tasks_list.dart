import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/Todoey_App/models/task.dart';
import 'package:flutter_todoey_app/Todoey_App/models/task_data.dart';
import 'package:flutter_todoey_app/Todoey_App/widgets/TaskTile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isCheck: task.isDone,
              taskTile: task.name,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
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
