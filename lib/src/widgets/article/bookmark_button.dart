import 'package:blogclub/src/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bookmarkButton(BuildContext context, ThemeData themeData) {
  return IconButton(
    splashColor: ColorPalette.splashColor,
    onPressed: () {},
    icon: Icon(
      CupertinoIcons.bookmark,
      color: themeData.colorScheme.primary,
    ),
  );
}
