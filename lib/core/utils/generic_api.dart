import 'package:dio/dio.dart';

class Api {
  final String _baseUrl = 'https://www.dbooks.org/api/';
  Dio dio = Dio();

  Future<dynamic> get({required String path}) async {
    Response response = await dio.get('$_baseUrl$path');
    return response.data;
  }
}
