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
  TextEditingController title = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Book'),),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: title,
                  decoration: InputDecoration(hintText: 'Enter Book title'),
                  validator:(value) {
                    if (value == null || value.isEmpty){
                      return 'Please enter!';
                    } else {
                      return null;
                    }
                  }
              ),
              TextFormField(
                // controller: description,
                  decoration: InputDecoration(hintText: 'Enter The Description'),
                  validator:(value) {
                    if (value == null || value.isEmpty){
                      return 'Please enter!';
                    } else {
                      return null;
                    }
                  }
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                      widget.bookViewModel.addBook(Book(
                          // title: 'Belaja Googld Cloud',
                          title: title.text,
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
                  child: Text('Submit code')
              ),
            ]
          )
        )

      ),
    );
  }
}
