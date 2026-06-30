import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_admin/core/services/storage_service.dart';
import 'package:hrms_admin/routes/app_routes.dart';

class SplashController extends GetxController {
  final StorageService storage = Get.find<StorageService>();

  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  Future<void> checkLogin() async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      final token = await storage.getToken();

      if (token != null && token.trim().isNotEmpty) {
        Get.offAllNamed(AppRoutes.dashboard);
      } else {
        Get.offAllNamed(AppRoutes.login);
      }
    } catch (e) {
      debugPrint('Splash auth check failed: $e');
      Get.offAllNamed(AppRoutes.login);
    }
  }
}
