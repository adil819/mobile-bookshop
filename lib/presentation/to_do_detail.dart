import 'package:flutter/material.dart';
import 'package:flutter_day_one/model/to_do.dart';

class ToDoDetail extends StatelessWidget {
  final ToDo toDo;
  const ToDoDetail({Key? key, required this.toDo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('To Do Detail'),),
      body: Container(
        child: Column(
          children: [
            TextButton(child: Text('Back'), onPressed: (){
              Navigator.pop(context);
            }),
            Text('Details' + ' activity:'),
            Text('Activity : ' + toDo.toDoName),
            Text('Priority : ' + toDo.toDoDesc),
            Text('Will do  : ' + toDo.toDoTime)
          ]
        )
      ),
    ));
  }
}
