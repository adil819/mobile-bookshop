import 'package:flutter/material.dart';
import 'package:flutter_day_one/data/model/book.dart';

import 'book_view_model.dart';

class BookFormScreen extends StatefulWidget {
  // const BookFormScreen({Key? key}) : super(key: key);
  BookViewModel bookViewModel = BookViewModel();

  @override
  _BookFormScreenState createState() => _BookFormScreenState();
}

class _BookFormScreenState extends State<BookFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Book'),),
      body: Container(
        child: TextButton(
            onPressed: (){
              setState(() {
                widget.bookViewModel.addBook(Book(
                  title: 'Belaja Googld Cloud',
                  description: 'Description',
                  year: 2021,
                  pages: 50,
                  language: 'Indonesia',
                  publisher: 'Legionare',
                  price: 300000,
                  stock: 8
                ));
              });
            }, 
            child: Text('Submit code')),
      ),
    );
  }
}
