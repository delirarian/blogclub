import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/home/post_list.dart';
import 'package:blogclub/src/widgets/profile/grid_icon.dart';
import 'package:blogclub/src/widgets/profile/table_icon.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  const PostList({
    super.key,
    required this.themeData,
    required this.posts,
  });

  final ThemeData themeData;
  final List<PostData> posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeData.colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    Constants.profileMyPosts,
                    style: themeData.textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: gridIcon(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: tableIcon(),
                ),
              ],
            ),
          ),
          for (var i = 0; i < posts.length; i++)
            Post(
              post: posts[i],
            ),
        ],
      ),
    );
  }
}
