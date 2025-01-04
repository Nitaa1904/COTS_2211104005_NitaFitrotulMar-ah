import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cotsgojek/design_system/styles/color.dart';

class LoginNavbar extends StatelessWidget {
  final VoidCallback onHelpPressed;

  const LoginNavbar({Key? key, required this.onHelpPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/Gojek.svg',
          width: 50,
          height: 30,
          color: ColorCollection.green,
        ),
        IconButton(
          onPressed: onHelpPressed,
          icon: SvgPicture.asset(
            'assets/icons/Help.svg',
            width: 24,
            height: 24,
            color: ColorCollection.item,
          ),
        ),
      ],
    );
  }
}
