import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class UserDescription extends StatelessWidget {
  const UserDescription({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Text(
      Constants.profileUserDescription,
      style: themeData.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
