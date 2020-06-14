import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
    builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteTask: () {
                taskData.deleteTask(index);
              },
            );
          }

        );
      }
    );
  }
}
