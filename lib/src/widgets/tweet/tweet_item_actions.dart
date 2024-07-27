import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class TweetItemActions extends StatelessWidget {
  const TweetItemActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          Constants.tweetRetweetsTitle,
          style: TextStyle(
            color: ColorPalette.customGrey,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          Constants.tweetQuoteTweetsTitle,
          style: TextStyle(
            color: ColorPalette.customGrey,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          Constants.tweetLikesTitle,
          style: TextStyle(
            color: ColorPalette.customGrey,
          ),
        ),
      ],
    );
  }
}
