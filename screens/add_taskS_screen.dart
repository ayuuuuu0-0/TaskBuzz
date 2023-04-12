import 'package:flutter/material.dart';
import 'package:task_buzz/Models/task.dart';
import 'package:provider/provider.dart';
import 'package:task_buzz/Models/tasks_data.dart';


class AddtaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10.0,),
            Text(
              'Add Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF32498F),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0,),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(
              onPressed: () {
                final task = Task(name: newTaskTitle);
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
                child: Text('Add'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF32498F), // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
