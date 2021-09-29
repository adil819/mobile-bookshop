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

  TextFormField textFormField(TextEditingController toDoName, String placeholder,  String emptyAlert){
    return TextFormField(
      controller: toDoName,
      decoration: InputDecoration(hintText: placeholder),
      validator:(value) {
        if (value == null || value.isEmpty){
          return emptyAlert;
        } else {
          return null;
        }
      }
    );
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
                      textFormField(toDoName, 'What do you want to do?', 'Let me know what you will do'),
                      textFormField(toDoDesc, 'High/Low Impact? High/Low Effort?', 'Ex: Low Impact, Low Efforts'),
                      textFormField(toDoTime, 'When will you do it?', 'Specify the time, yes?'),
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
                                              flex: 5,
                                              child: Text(todos[index].toDoName,style: TextStyle(fontWeight: FontWeight.bold)),
                                            ),
                                            Expanded(
                                              child: MaterialButton(
                                                minWidth: 100.0,
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
