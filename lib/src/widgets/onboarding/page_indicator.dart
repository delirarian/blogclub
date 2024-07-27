import 'package:blogclub/src/datas/data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController pageController,
    required this.items,
    required this.themeData,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<OnBoardingItem> items;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: items.length,
      effect: ExpandingDotsEffect(
        activeDotColor: themeData.colorScheme.primary,
        dotWidth: 8,
        dotHeight: 8,
        dotColor: themeData.colorScheme.primary.withOpacity(0.1),
      ),
    );
  }
}
