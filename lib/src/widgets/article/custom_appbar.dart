import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

Widget customAppbar() {
  return SliverAppBar(
    title: const Text(Constants.articleAppbarTitle),
    actions: [
      IconButton(
        splashColor: ColorPalette.splashColor,
        onPressed: () {},
        icon: const Icon(Icons.more_horiz_rounded),
      ),
      const SizedBox(
        width: 16,
      ),
    ],
  );
}
