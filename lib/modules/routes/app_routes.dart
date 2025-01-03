import 'package:get/get.dart';
import 'package:cotsgojek/modules/view/LoginPage.dart';
import 'package:cotsgojek/modules/view/PageView.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String register = '/register';

  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
    // GetPage(
    //   name: register,
    //   page: () => const RegisterPage(),
    // ),
  ];
}
