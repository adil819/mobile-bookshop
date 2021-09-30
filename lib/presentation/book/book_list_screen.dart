import 'package:flutter/material.dart';
import 'package:flutter_day_one/data/model/book.dart';

import 'book_view_model.dart';

class BookListScreen extends StatefulWidget {
  // const BookListScreen({Key? key}) : super(key: key);
  BookViewModel bookViewModel = BookViewModel();

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<dynamic> listBook = <Book>[];

  // @Override
  Future<void> initState() async {
    super.initState();
    _getListBook();
  }

  _getListBook() async{
    listBook = await widget.bookViewModel.getBook();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Book List'),
            TextButton(
              onPressed:(){
                Navigator.pushNamed(context, '/add-book');
              },
              child: Text('Add Book'),
            ),
            Expanded(
              child: Card(
                child: Scrollbar
              )
            )
          ]
        )
      ),
    );
  }
}
