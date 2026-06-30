import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hrms_admin/core/services/storage_service.dart';

class AuthInterceptor extends Interceptor {
  // Reuqest handler
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storage = Get.find<StorageService>();
    final token = await storage.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  // Error handler
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      print("Unauthorized");
    }

    handler.next(err);
  }
}
