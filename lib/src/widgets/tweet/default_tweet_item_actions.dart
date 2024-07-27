import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class DefaultTweetItemActions extends StatelessWidget {
  const DefaultTweetItemActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          Constants.defaultTweetRetweetsTitle,
          style: TextStyle(color: ColorPalette.customGrey),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          Constants.defaultTweetQuoteTweetsTitle,
          style: TextStyle(color: ColorPalette.customGrey),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          Constants.defaultTweetLikesTitle,
          style: TextStyle(color: ColorPalette.customGrey),
        ),
      ],
    );
  }
}
