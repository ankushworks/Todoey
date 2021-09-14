import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task.dart';
import 'package:todoey_app/model/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle;
  final Function onChange;
  final Function  onLongPress;
  TaskTile({this.isChecked,this.taskTitle,this.onChange,this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(taskTitle , style: TextStyle(
        decoration:isChecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(value: isChecked , onChanged: onChange),
    );
  }
}