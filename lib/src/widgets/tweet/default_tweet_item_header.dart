import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/blue_tick_image.dart';
import 'package:flutter/material.dart';

class DefaultTweetItemHeader extends StatelessWidget {
  const DefaultTweetItemHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: SizedBox.fromSize(
            size: const Size.fromRadius(22), // Image radius
            child: Image.network(
              Constants.defaultTweetItemProfileImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Constants.defaultTweetNameTitle,
                style: themeData.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const Text(Constants.defaultTweetUsernameTitle),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: blueTickImage(),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 160, top: 10),
            child: Icon(
              Icons.more_horiz,
              size: 12,
            ),
          ),
        ),
      ],
    );
  }
}
