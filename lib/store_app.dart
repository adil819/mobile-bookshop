import 'package:flutter/material.dart';
import 'package:flutter_day_one/presentation/book/book_list_screen.dart';
import 'package:flutter_day_one/presentation/member/member_list_screen.dart';

class StoreApp extends StatefulWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  _StoreAppState createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {

  int _currentPage = 0;
  final List _pages = [BookListScreen(), MemberListScreen()];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(title: Text('Book Store'),),
        body: _pages[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: ,
          items: [
            BottomNavigationBarItem(
                label: 'Book',
                icon: Icon(Icons.book)
            ),
            BottomNavigationBarItem(
                label: 'Book',
                icon: Icon(Icons.book)
            ),
          ]
        )
      ))
    );
  }
}
