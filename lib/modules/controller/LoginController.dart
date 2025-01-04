import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cotsgojek/design_system/styles/color.dart';

class LoginController extends GetxController {
  // TextEditingController untuk nomor telepon
  final TextEditingController phoneController = TextEditingController();

  // GlobalKey untuk Form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Validasi nomor telepon
  String? validatePhoneNumber(String? value) {
    final phoneRegExp = RegExp(r'^\d{10,13}$');
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Enter a valid phone number (10-13 digits)';
    }
    return null;
  }

  // Fungsi untuk menangani pengiriman form
  void onSubmit() {
    if (formKey.currentState!.validate()) {
      // Logika setelah validasi berhasil
      print('Phone Number: ${phoneController.text}');
      Get.snackbar(
        'Success',
        'Phone Number Submitted',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ColorCollection.greenGojek,
        colorText: Colors.white,
      );
    } else {
      // Logika jika validasi gagal
      Get.snackbar(
        'Error',
        'Please enter a valid phone number',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onClose() {
    // Bersihkan controller untuk menghindari memory leak
    phoneController.dispose();
    super.onClose();
  }
}
