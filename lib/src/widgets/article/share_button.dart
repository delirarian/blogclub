import 'package:blogclub/src/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shareButton(BuildContext context, ThemeData themeData) {
  return IconButton(
    splashColor: ColorPalette.splashColor,
    onPressed: () {},
    icon: Icon(
      CupertinoIcons.share,
      color: themeData.colorScheme.primary,
    ),
  );
}
