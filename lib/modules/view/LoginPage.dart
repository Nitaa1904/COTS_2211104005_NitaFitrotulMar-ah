import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cotsgojek/design_system/styles/color.dart';
import 'package:cotsgojek/design_system/styles/typograph.dart';
import 'package:cotsgojek/modules/controller/LoginController.dart';
import 'package:cotsgojek/design_system/widget/navbar/LoginNavbar.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorCollection.white,
        elevation: 0,
        title: LoginNavbar(
          onHelpPressed: () {
            // Tambahkan logika untuk aksi "Help"
            Get.snackbar('Help', 'Help button pressed');
          },
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login', style: AppTypography.h2),
              Text(
                'Enter your registered phone number to log in',
                style: AppTypography.subhead2
                    .copyWith(color: ColorCollection.neutral600),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorCollection.neutral500),
                      borderRadius: BorderRadius.circular(8),
                      color: ColorCollection.neutral200,
                    ),
                    child: Text(
                      '+62',
                      style: AppTypography.h4
                          .copyWith(color: ColorCollection.item),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: controller.phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        hintStyle: AppTypography.subhead2
                            .copyWith(color: ColorCollection.neutral500),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: ColorCollection.neutral500),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: ColorCollection.greenGojek),
                        ),
                      ),
                      validator: controller.validatePhoneNumber,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle "Issue with number?" action
                  },
                  child: Text(
                    'Issue with number?',
                    style: AppTypography.subhead2
                        .copyWith(color: ColorCollection.greenGojek),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.onSubmit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorCollection.greenGojek,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style:
                        AppTypography.h4.copyWith(color: ColorCollection.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
