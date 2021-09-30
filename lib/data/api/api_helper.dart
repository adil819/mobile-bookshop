import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper.privateConstructor();

  static ApiHelper INSTANCE = ApiHelper.privateConstructor();

  final _dio = Dio(BaseOptions(baseUrl: 'http://172.31.192.1:8080'));

  Future<dynamic> postData(String path, Map<String, dynamic> data) async{
    try{
      Response response = await _dio.post(path, data: data);
      if(response.statusCode == 200 || response.statusCode == 201){
        return response.data;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      print(e);
      throw Exception('Could not connect');
    }
  }

}