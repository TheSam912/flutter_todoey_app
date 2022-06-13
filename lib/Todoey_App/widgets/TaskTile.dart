import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/Todoey_App/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTile;
  final Function(bool?) checkBoxCallBack;
  final Function() longPressCallBack;

  TaskTile(
      {required this.isCheck,
      required this.taskTile,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTile,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isCheck,
          onChanged: checkBoxCallBack),
    );
  }
}
