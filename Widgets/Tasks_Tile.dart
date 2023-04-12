import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final VoidCallback longpressCallback;

  TaskTile(
      {required this.isChecked,
       required this.taskTitle,
       required this.checkboxCallback,
       required this.longpressCallback
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(taskTitle,
        style: TextStyle
          (decoration:  isChecked ? TextDecoration.lineThrough : null),),
      trailing:
      Checkbox(
        activeColor: Color(0xFF32498F),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// (bool? checkboxState)
// {
// setState(() {
// isChecked = checkboxState ?? true;
// });
// },


