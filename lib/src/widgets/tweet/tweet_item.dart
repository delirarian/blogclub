import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/tweet_item_actions.dart';
import 'package:blogclub/src/widgets/tweet/tweet_item_header.dart';
import 'package:blogclub/src/widgets/tweet/tweets.dart';
import 'package:flutter/material.dart';

class TweetItem extends StatefulWidget {
  const TweetItem({
    super.key,
    required this.tweets,
  });

  final TweetEntity tweets;

  @override
  State<TweetItem> createState() => _TweetItemState();
}

class _TweetItemState extends State<TweetItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: InkWell(
        onLongPress: () {
          widget.tweets.delete();
        },
        child: Container(
          height: 200,
          width: 360,
          decoration: BoxDecoration(
            color: ColorPalette.tweetItemBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: TweetItemHeader(widget: widget),
              ),
              tweetItemContent(),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Row(
                  children: [
                    Text(
                      Constants.tweetTimeTitle,
                      style: TextStyle(
                        color: ColorPalette.customGrey,
                      ),
                    ),
                    Text(
                      Constants.tweetDateTitle,
                      style: TextStyle(
                        color: ColorPalette.customGrey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                color: ColorPalette.dividerColor,
                height: 0.5,
                indent: 16,
                endIndent: 16,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: TweetItemActions(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget tweetItemContent() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 22, 16, 0),
        child: Text(
          widget.tweets.tweet,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}
