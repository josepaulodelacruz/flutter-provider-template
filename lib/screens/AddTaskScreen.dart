import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    final TaskData taskData = Provider.of<TaskData>(context);

    String newTaskTitle;

    // TODO: implement build
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent)),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                newTaskTitle = val;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear)))),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white)),
              color: Colors.lightBlueAccent,
              onPressed: () {
                taskData.addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
