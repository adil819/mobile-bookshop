import 'package:flutter_day_one/model/to_do.dart';

class ToDoRepository {
  List<ToDo> todos = <ToDo>[];

  List<ToDo> getListToDo(){
    return todos;
  }

  addToDo(ToDo newToDo){
      todos.add(newToDo);
  }

  removeToDo(int index){
      todos.removeAt(index);
  }

}