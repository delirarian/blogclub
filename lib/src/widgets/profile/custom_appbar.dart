import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(Constants.profileTitle),
      actions: [
        IconButton(
          splashColor: ColorPalette.splashColor,
          icon: const Icon(Icons.more_horiz_rounded),
          onPressed: () {},
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
