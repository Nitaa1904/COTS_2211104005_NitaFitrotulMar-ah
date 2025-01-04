import 'package:get/get.dart';
import 'package:cotsgojek/modules/controller/LoginController.dart';
import 'package:cotsgojek/modules/controller/LoginNavbarController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginNavbarController());
    Get.lazyPut(() => LoginController());
  }
}
