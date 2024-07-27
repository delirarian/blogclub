import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/widgets/onboarding/custom_button.dart';
import 'package:blogclub/src/widgets/onboarding/page_indicator.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required PageController pageController,
    required this.items,
    required this.themeData,
    required this.page,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<OnBoardingItem> items;
  final ThemeData themeData;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PageIndicator(
            pageController: _pageController,
            items: items,
            themeData: themeData,
          ),
          CustomButton(
            page: page,
            items: items,
            pageController: _pageController,
          ),
        ],
      ),
    );
  }
}
