import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/article/article_card.dart';
import 'package:blogclub/src/widgets/article/profile.dart';
import 'package:flutter/material.dart';

Widget articleList(ThemeData themeData, BuildContext context) {
  return SliverList(
    delegate: SliverChildListDelegate.fixed(
      [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Text(
            Constants.articleTitle,
            style: themeData.textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 16, 32),
          child: profile(themeData, context),
        ),
        const ArticleCard(),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
          child: Text(
            Constants.articleSubTitle,
            style: themeData.textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Text(
            Constants.articleCaption,
            style: themeData.textTheme.bodyMedium,
          ),
        ),
      ],
    ),
  );
}
