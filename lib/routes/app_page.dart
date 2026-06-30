import 'package:get/get.dart';
import 'package:hrms_admin/modules/auth/auth_binding.dart';
import 'package:hrms_admin/modules/auth/login_page.dart';
import 'package:hrms_admin/modules/dashboard/dashboard_binding.dart';
import 'package:hrms_admin/modules/dashboard/dashboard_page.dart';
import 'package:hrms_admin/modules/splash/splash_binding.dart';
import 'package:hrms_admin/modules/splash/splash_page.dart';
import 'package:hrms_admin/routes/app_routes.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
      transition: Transition.fadeIn,
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      transition: Transition.fadeIn,
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
      transition: Transition.fadeIn,
      binding: DashboardBinding(),
    ),
  ];
}
