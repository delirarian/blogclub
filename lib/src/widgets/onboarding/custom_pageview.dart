import 'package:blogclub/src/datas/data.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.items,
    required PageController pageController,
    required this.themeData,
  }) : _pageController = pageController;

  final List<OnBoardingItem> items;
  final PageController _pageController;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: items.length,
      controller: _pageController,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                items[index].title,
                style: themeData.textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                items[index].description,
                style:
                    themeData.textTheme.titleMedium!.apply(fontSizeFactor: 0.9),
              ),
            ],
          ),
        );
      },
    );
  }
}
