import 'package:flutter/material.dart';

class ToDo{
  int id;
  String toDoName;
  String toDoDesc;
  String toDoTime;

  ToDo(
      this.id,
      this.toDoName,
      this.toDoDesc,
      this.toDoTime
      );
}

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}


class _ToDoScreenState extends State<ToDoScreen> {
  List<ToDo> todos = <ToDo>[];
  TextEditingController toDoName = new TextEditingController();
  TextEditingController toDoDesc = new TextEditingController();
  TextEditingController toDoTime = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  addToDo(){
    setState(() {
      todos.add(new ToDo(todos.length + 1, toDoName.text, toDoDesc.text, toDoTime.text));
      // todos.add(toDoName.text);
      // print('value of todos');
      // print(todos);
    });
  }

  removeToDo(int index){
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('To Do'),),
      body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: toDoName,
                          decoration: InputDecoration(hintText: 'What do you want to do?'),
                          validator:(value) {
                            if (value == null || value.isEmpty){
                              return 'Let me know what will you do :)';
                            } else {
                              return null;
                            }
                          }
                      ),
                      TextFormField(
                          controller: toDoDesc,
                          decoration: InputDecoration(hintText: 'High/Low Impact? High/Low Effort?'),
                          validator:(value) {
                            if (value == null || value.isEmpty){
                              return 'Example: High Impact, Low Effort';
                            } else {
                              return null;
                            }
                          }
                      ),
                      TextFormField(
                          controller: toDoTime,
                          decoration: InputDecoration(hintText: 'When will you do it?'),
                          validator:(value) {
                            if (value == null || value.isEmpty){
                              return 'You have to specify the time, yes?';
                            } else {
                              return null;
                            }
                          }
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(onPressed: (){
                          if(_formKey.currentState!.validate()) {
                            addToDo();
                          }
                        },
                          child: const Text('Submit')),
                      )
                    ],
                )),
              ),
              // CARA YANG PERTAMA:
              // Column(
              //   children: todos.map((e) => new Text(e)).toList(),
              // )
              // CARA YANG KEDUA TAMBAH LINE SPACE:
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child:  Column(
              //             children: todos.map((e) => Padding(
              //               padding: const EdgeInsets.all(20.0),
              //               child: new Text(e),
              //             )).toList(),
              //           ),
              // )
              // CARA KETIGA PAKAI LISTVIEW BIAR BISA SCROLL:
              // SizedBox(height: 50.0,),
              // Expanded(
              //   child: Card(
              //     child: Scrollbar(child:
              //       ListView.separated(
              //         itemBuilder: (context, index){
              //           return Row(
              //             children: [
              //               Expanded(
              //                 child: ListTile(
              //                   leading: Icon(Icons.access_alarm),
              //                   title: Text(todos[index],
              //                     style: TextStyle(fontWeight: FontWeight.bold)),
              //                 ),
              //               ),
              //             ],
              //           );
              //         },
              //         separatorBuilder: (context, index){
              //           return Divider(height: 5.0, color: Colors.blue,);
              //         },
              //         itemCount: todos.length,
              //       )
              //     )
              //   )
              // )
              // CARA KEEMPAT PAKAI LISTVIEW TAPI LISTVIEW.BUILDER:
              SizedBox(height: 50.0,),
              Expanded(
                  child: Card(
                      child: Scrollbar(child:
                      ListView.builder(
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        leading: Icon(Icons.access_alarm),
                                        title: Row(
                                          children: [
                                            Expanded(
                                              child: Text(todos[index].toDoName,style: TextStyle(fontWeight: FontWeight.bold)),
                                            ),
                                            Expanded(
                                              child: TextButton(
                                                child:
                                                  Icon(Icons.auto_delete_outlined),
                                                  onPressed: (){
                                                    removeToDo(index);
                                                  },
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                    ),
                                  ],
                              ),
                              Divider(height: 5.0, color: Colors.red,)
                            ],
                          );
                        },
                        itemCount: todos.length,
                      )
                      )
                  )
              )
            ],
          ),
      ),
    ));
  }
}
