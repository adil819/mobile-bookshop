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
  TextEditingController description = new TextEditingController();
  TextEditingController year = new TextEditingController();
  TextEditingController pages = new TextEditingController();
  TextEditingController language = new TextEditingController();
  TextEditingController publisher = new TextEditingController();
  TextEditingController price = new TextEditingController();
  TextEditingController stock = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextFormField textFormField(TextEditingController field, String placeholder,  String emptyAlert){
    return TextFormField(
        controller: field,
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
    return Scaffold(
      appBar: AppBar(title: Text('Add Book'),),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              textFormField(title, 'Enter Book title', 'Please enter!'),
              textFormField(description, 'Enter Book description', 'Please enter!'),
              textFormField(publisher, 'Enter Book publisher', 'Please enter!'),
              textFormField(pages, 'Enter Book pages', 'Please enter!'),
              textFormField(year, 'Enter Book year', 'Please enter!'),
              textFormField(language, 'Enter Book language', 'Please enter!'),
              textFormField(price, 'Enter Book price', 'Please enter!'),
              textFormField(stock, 'Enter Book stock', 'Please enter!'),
              // TextFormField(
              //   controller: title,
              //     decoration: InputDecoration(hintText: 'Enter Book title'),
              //     validator:(value) {
              //       if (value == null || value.isEmpty){
              //         return 'Please enter!';
              //       } else {
              //         return null;
              //       }
              //     }
              // ),

              TextButton(
                  onPressed: (){
                    setState(() {
                      widget.bookViewModel.addBook(Book(
                          // title: 'Belaja Googld Cloud',
                          title: title.text,
                          description: description.text,
                          year: 2020, //year.text,
                          pages: 20, //pages.text,
                          language: language.text,
                          publisher: publisher.text,
                          price: 202020, //price.text,
                          stock: 202, //stock.value
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
