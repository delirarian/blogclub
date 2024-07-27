import 'package:blogclub/src/screens/main_screen.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.onTap, required this.selectedIndex});

  final Function(int index) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return bottomNavigation();
  }

  Widget bottomNavigation() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: ColorPalette.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: ColorPalette.lightBrown,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          homeIcon(),
          articlesIcon(),
          addIcon(),
          searchIcon(),
          profileIcon(),
        ],
      ),
    );
  }

  Widget profileIcon() {
    return BottomNavigationItem(
      iconFileName: Constants.profileIconImage,
      activeIconFileName: Constants.profileActiveIconImage,
      onTap: () {
        onTap(profileIndex);
      },
      isActive: selectedIndex == profileIndex,
    );
  }

  Widget searchIcon() {
    return BottomNavigationItem(
      iconFileName: Constants.searchIconImage,
      activeIconFileName: Constants.searchActiveIconImage,
      onTap: () {
        onTap(searchIndex);
      },
      isActive: selectedIndex == searchIndex,
    );
  }

  Widget addIcon() {
    return BottomNavigationItem(
      iconFileName: Constants.addIconImage,
      activeIconFileName: Constants.addActiveIconImage,
      onTap: () {
        onTap(tweetIndex);
      },
      isActive: selectedIndex == tweetIndex,
    );
  }

  Widget articlesIcon() {
    return BottomNavigationItem(
      iconFileName: Constants.articlesIconImage,
      activeIconFileName: Constants.articlesActiveIconImage,
      onTap: () {
        onTap(articleIndex);
      },
      isActive: selectedIndex == articleIndex,
    );
  }

  Widget homeIcon() {
    return BottomNavigationItem(
      iconFileName: Constants.homeIconImage,
      activeIconFileName: Constants.homeActiveIconImage,
      onTap: () {
        onTap(homeIndex);
      },
      isActive: selectedIndex == homeIndex,
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final bool isActive;
  final Function() onTap;

  const BottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.onTap,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: bottomNavigationIcons(),
    );
  }

  Widget bottomNavigationIcons() {
    return Image.asset(
      'assets/images/icons/${isActive ? activeIconFileName : iconFileName}',
      width: 50,
      height: 50,
    );
  }
}
