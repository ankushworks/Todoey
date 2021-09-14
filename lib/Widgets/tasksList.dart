import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/Widgets/taskTile.dart';
import 'package:todoey_app/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            onChange: (bool checkboxState) {
                taskData.updateTask(task);
            },
            onLongPress: (){
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: Provider.of<TaskData>(context).tasks.length,
      ),
    );
  }
}
