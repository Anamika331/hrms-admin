import 'package:dio/dio.dart';

import 'auth_interceptor.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:5000/api',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    dio.interceptors.add(AuthInterceptor());

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }
}
