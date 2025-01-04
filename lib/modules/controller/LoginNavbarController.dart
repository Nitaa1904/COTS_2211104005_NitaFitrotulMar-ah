import 'package:get/get.dart';

class LoginNavbarController extends GetxController {
  var currentPageIndex = 0.obs;

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }
}
