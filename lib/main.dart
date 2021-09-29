import 'package:flutter/material.dart';
import 'to_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // home: ToDoScreen() => gadipake karena mau navigation pake routes
      routes: {
        '/' : (context) => ToDoScreen(),
        '/detail' : (context) => ToDoDetail()
      },
    ); // MaterialApp
  }
}
