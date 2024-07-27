import 'package:blogclub/src/screens/add_tweet_screen.dart';
import 'package:blogclub/src/widgets/tweet/tweet_item.dart';
import 'package:blogclub/src/widgets/tweet/tweet_item_profile_image.dart';
import 'package:flutter/material.dart';

class TweetItemHeader extends StatelessWidget {
  const TweetItemHeader({
    super.key,
    required this.widget,
  });

  final TweetItem widget;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetItemProfileImage(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.tweets.name,
                  style: themeData.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(widget.tweets.userName),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 10),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddTweetScreen(
                    tweets: widget.tweets,
                  ),
                ),
              );
            },
            child: const Icon(
              Icons.more_horiz,
              size: 12,
            ),
          ),
        ),
      ],
    );
  }
}
