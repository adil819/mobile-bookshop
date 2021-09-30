import 'package:flutter_day_one/data/api/api_helper.dart';
import 'package:flutter_day_one/data/model/book.dart';
import 'package:flutter_day_one/data/model/book_response.dart';

class BookRepository {
  final ApiHelper _apiHelper = ApiHelper.INSTANCE;

  Future<Book> addProduct(Book newBook)async{
    final response = await _apiHelper.postData('/book', newBook.toMap());
    return Book.fromMap(response);
  }

  Future<List<dynamic>> getProduct()async{
    final response = await _apiHelper.getData('/book');
    return BookResponse.fromList(response).books;
  }
}