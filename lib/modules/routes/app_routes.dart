import 'package:get/get.dart';
import 'package:cotsgojek/modules/view/LoginPage.dart';
import 'package:cotsgojek/modules/view/PageView.dart';
import 'package:cotsgojek/modules/view/MainPage.dart';
import 'package:cotsgojek/modules/bindings/LoginBinding.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String main = '/main';

  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.main, // Gunakan rute dari AppRoutes
      page: () =>
          const MainPage(), // Pastikan MainPage diinisialisasi dengan benar
    ),
  ];
}
