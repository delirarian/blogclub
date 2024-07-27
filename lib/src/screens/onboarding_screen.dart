import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/widgets/onboarding/onboarding_image.dart';
import 'package:blogclub/src/widgets/onboarding/custom_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  final items = AppDatabase.onBoardingItems;
  int page = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != page) {
        setState(() {
          page = _pageController.page!.round();
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: OnBoardingImage(),
            ),
            CustomSlider(
              themeData: themeData,
              items: items,
              pageController: _pageController,
              page: page,
            ),
          ],
        ),
      ),
    );
  }
}
