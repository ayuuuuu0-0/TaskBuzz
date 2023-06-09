import 'package:flutter/material.dart';
import 'package:task_buzz/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:task_buzz/Models/tasks_data.dart';


void main() => runApp(MyApp());
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
        home: TasksScreen(),
        ),
      );
    }
  }
  

