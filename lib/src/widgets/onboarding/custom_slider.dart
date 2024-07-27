import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/widgets/onboarding/custom_carousel_slider.dart';
import 'package:blogclub/src/widgets/onboarding/custom_pageview.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.themeData,
    required this.items,
    required PageController pageController,
    required this.page,
  }) : _pageController = pageController;

  final ThemeData themeData;
  final List<OnBoardingItem> items;
  final PageController _pageController;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
        color: themeData.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: ColorPalette.black.withOpacity(0.1),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: CustomPageView(
              items: items,
              pageController: _pageController,
              themeData: themeData,
            ),
          ),
          CustomCarouselSlider(
            pageController: _pageController,
            items: items,
            themeData: themeData,
            page: page,
          ),
        ],
      ),
    );
  }
}
