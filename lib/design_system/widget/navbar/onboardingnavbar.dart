import 'package:flutter/material.dart';
import 'package:cotsgojek/design_system/styles/color.dart';

class OnboardingNavbar extends StatelessWidget {
  final PageController pageController;
  final List<Widget> slides;
  final int currentIndex;

  const OnboardingNavbar({
    Key? key,
    required this.pageController,
    required this.slides,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            children: slides,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              slides.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == currentIndex
                      ? ColorCollection.greenGojek
                      : ColorCollection.neutral500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
