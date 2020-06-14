import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function deleteTask;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallBack, this.deleteTask});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onLongPress: deleteTask,
      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack));
  }

}




