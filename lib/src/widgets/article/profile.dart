import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/article/bookmark_button.dart';
import 'package:blogclub/src/widgets/article/share_button.dart';
import 'package:flutter/material.dart';

Widget profile(ThemeData themeData, BuildContext context) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          Constants.articleProfileImage,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.articleUserName,
              style: themeData.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(Constants.articlePostTime),
          ],
        ),
      ),
      shareButton(context, themeData),
      bookmarkButton(context, themeData),
    ],
  );
}
