import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/default_tweet_item_actions.dart';
import 'package:blogclub/src/widgets/tweet/default_tweet_item_content.dart';
import 'package:blogclub/src/widgets/tweet/default_tweet_item_header.dart';
import 'package:flutter/material.dart';

class DefaultTweetItem extends StatelessWidget {
  const DefaultTweetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 360,
      decoration: BoxDecoration(
        color: ColorPalette.tweetItemBackgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: DefaultTweetItemHeader(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 22, 16, 0),
              child: defaultTweetItemContent(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              children: [
                Text(
                  Constants.defaultTweetTimeTitle,
                  style: TextStyle(
                    color: ColorPalette.customGrey,
                  ),
                ),
                Text(
                  Constants.defaultTweetDateTitle,
                  style: TextStyle(
                    color: ColorPalette.customGrey,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Divider(
              color: ColorPalette.dividerColor,
              height: 0.5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: DefaultTweetItemActions(),
          )
        ],
      ),
    );
  }
}
