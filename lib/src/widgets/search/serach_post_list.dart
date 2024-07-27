import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/search/search_posts_item.dart';
import 'package:flutter/material.dart';

class SerachPostList extends StatelessWidget {
  const SerachPostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(0.1),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 1,
        runSpacing: 1,
        //TODO:
        children: [
          SearchPostsItem(imagePath: Constants.searchFirstPostImage),
          SearchPostsItem(imagePath: Constants.searchSecondPostImage),
          SearchPostsItem(imagePath: Constants.searchThirdPostImage),
          SearchPostsItem(imagePath: Constants.searchFourthPostImage),
          SearchPostsItem(imagePath: Constants.searchFifthPostImage),
          SearchPostsItem(imagePath: Constants.searchSixthPostImage),
          SearchPostsItem(imagePath: Constants.searchSeventhPostImage),
          SearchPostsItem(imagePath: Constants.searchEighthPostImage),
          SearchPostsItem(imagePath: Constants.searchNinthPostImage),
          SearchPostsItem(imagePath: Constants.searchTenthPostImage),
          SearchPostsItem(imagePath: Constants.searchEleventhPostImage),
          SearchPostsItem(imagePath: Constants.searchTwelfthPostImage),
          SearchPostsItem(imagePath: Constants.searchThirteenthPostImage),
          SearchPostsItem(imagePath: Constants.searchFourteenthPostImage),
          SearchPostsItem(imagePath: Constants.searchFifteenthPostImage),
          SearchPostsItem(imagePath: Constants.searchSixteenthPostImage),
          SearchPostsItem(imagePath: Constants.searchSeventeenthPostImage),
          SearchPostsItem(imagePath: Constants.searchEighteenthPostImage),
        ],
      ),
    );
  }
}
