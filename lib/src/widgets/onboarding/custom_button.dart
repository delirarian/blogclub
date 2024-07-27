import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/screens/auth_screen/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.page,
    required this.items,
    required PageController pageController,
  }) : _pageController = pageController;

  final int page;
  final List<OnBoardingItem> items;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (page == items.length - 1) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const AuthScreen(),
            ),
          );
        } else {
          _pageController.animateToPage(
            page + 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate,
          );
        }
      },
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(84, 60),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Icon(
        page == items.length - 1
            ? CupertinoIcons.check_mark
            : CupertinoIcons.arrow_right,
      ),
    );
  }
}
