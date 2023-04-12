import 'package:flutter/material.dart';
import 'package:task_buzz/Models/tasks_data.dart';
import 'package:task_buzz/Widgets/Tasks_List.dart';
import 'package:task_buzz/screens/add_taskS_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF32498F),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF32498F),
        onPressed: () {
          showModalBottomSheet
            (context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddtaskScreen(),
                  // {
                  //   // setState(() {
                  //   //   tasks.add(Task(name: newTaskTitle));
                  //   // });
                  //   Navigator.pop(context);
                  // }),
                ),
              ));
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list,
                  size: 30.0,
                  color: Color(0xFF32498F),),
                backgroundColor: Colors.white,
                radius: 30.0),
                SizedBox(
                  height: 20.0,
                ),
                Text('Task Buzz',
                  style: TextStyle(
                      fontSize: 40.0,
                    color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('  ${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(color: Color(0xFF8393C7)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  )
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}


// class ProfessionalCard extends StatelessWidget {
//   const ProfessionalCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//       elevation: 0,
//       color: Color(0xFF091B4F),
//       shape: RoundedRectangleBorder(
//         side: BorderSide(
//           color: Color(0xFF091B4F),
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//       child: SizedBox(
//         width: 150,
//         height: 100,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.,
//           children: [ Center(
//             child: Text('Professional',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold),
//         ),
//           ),
//         ],
//         ),
//       ),
//     ),
//     );
//   }
// }
