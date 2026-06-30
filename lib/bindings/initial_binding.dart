import 'package:get/get.dart';
import 'package:hrms_admin/core/services/api_services.dart';

import '../core/services/storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StorageService(), permanent: true);

    Get.put(ApiService(), permanent: true);
  }
}
