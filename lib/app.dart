import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_admin/bindings/initial_binding.dart';
import 'package:hrms_admin/routes/app_page.dart';
import 'package:hrms_admin/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.splash,
    );
  }
}
