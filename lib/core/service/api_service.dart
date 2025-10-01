import 'package:dio/dio.dart';

class ApiService {
  String url = 'https://elwekala.onrender.com/product/Laptops';

  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get() async {
    final response = await dio.get(url);
    return response.data;
  }
}
