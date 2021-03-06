import 'package:flutter/material.dart';
import 'package:flutter_day_one/data/model/book.dart';
import 'book_view_model.dart';

class BookListScreen extends StatefulWidget {
  BookViewModel bookViewModel = BookViewModel();

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<dynamic> listBook = <Book>[];

  @override
  void initState() {
    super.initState();
    _getListBook();
  }

  _getListBook() async{
    listBook = await widget.bookViewModel.getBook();
    Future.delayed(const Duration(microseconds: 500), (){
      setState(() {
        listBook = listBook;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Book List'),
            TextButton(
              onPressed:() async{
                final status = await Navigator.pushNamed(context, '/add-book');
                if(status == 'done'){
                  setState(() {
                    _getListBook();
                  });
                }
                // Navigator.pushNamed(context, '/add-book');
              },
              child: Text('Add Book'),
            ),
            Expanded(
              child: Card(
                child: Scrollbar(
                  child: ListView.builder(
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: Icon(Icons.book, size: 40.0),
                                  title: Text(listBook[index].title),
                              )),
                            ],
                          ),
                          Divider(height: 5.0)
                        ],
                      );
                    },
                    itemCount: listBook.length,
                )),
            ))
          ],
        ),
      ),
    );
  }
}
