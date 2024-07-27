import 'package:blogclub/src/screens/add_tweet_screen.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/tweets.dart';
import 'package:flutter/material.dart';

Widget tweetFloatingActionButton(ThemeData themeData, BuildContext context) {
  return Container(
    width: 120,
    height: 48,
    decoration: BoxDecoration(
      color: themeData.colorScheme.primary,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: themeData.colorScheme.primary.withOpacity(0.5),
        ),
      ],
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddTweetScreen(
              tweets: TweetEntity(),
            ),
          ),
        );
      },
      child: Center(
        child: Text(
          Constants.tweetFloatingActionButtonTitle,
          style: TextStyle(
            color: themeData.colorScheme.onPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
