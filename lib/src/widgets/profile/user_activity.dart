import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class UserActivity extends StatelessWidget {
  const UserActivity({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      left: 64,
      right: 64,
      child: Container(
        height: 68,
        decoration: BoxDecoration(
          color: themeData.colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorPalette.purpule,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Constants.profilePostsNumber,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: themeData.colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      Constants.profilePostsTitle,
                      style: themeData.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w200,
                        color: themeData.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Constants.profileFollowingNumber,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    Constants.profileFollowingTitle,
                    style: themeData.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w200,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Constants.profileFollowersNumber,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    Constants.profileFollowersTitle,
                    style: themeData.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w200,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
