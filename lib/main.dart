import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:cotsgojek/modules/routes/app_routes.dart';
import 'package:cotsgojek/modules/bindings/LoginBinding.dart';
import 'package:cotsgojek/modules/view/LoginPage.dart';
import 'package:cotsgojek/modules/view/PageView.dart';
import 'package:cotsgojek/modules/controller/LoginNavbarController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Ganti MaterialApp dengan GetMaterialApp
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboarding, // Rute awal
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => LoginNavbarController());
      }),

      getPages: [
        GetPage(
          name: AppRoutes.login,
          page: () => LoginPage(),
          binding: LoginBinding(), // Binding untuk halaman Login
        ),
        GetPage(
          name: AppRoutes.onboarding,
          page: () => OnboardingPage(),
        ),
      ],
    );
  }
}
