import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//*TODO:
class PostList extends StatelessWidget {
  const PostList({super.key, required ThemeData themeData, required List<PostData> posts});

  @override
  Widget build(BuildContext context) {
    final posts = AppDatabase.posts;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Constants.homeLatestNews,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {},
                child: const Text(
                  Constants.homeMore,
                  style: TextStyle(
                    color: ColorPalette.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
            itemCount: posts.length,
            itemExtent: 160,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final post = posts[index];
              return Post(post: post);
            }),
      ],
    );
  }
}

class Post extends StatefulWidget {
  const Post({
    super.key,
    required this.post,
  });

  final PostData post;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(32, 8, 32, 8),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: ColorPalette.boxShadowColor,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/posts/small/${widget.post.imageFileName}',
              width: 120,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.post.caption,
                    style: const TextStyle(
                      fontFamily: Constants.defaultFontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorPalette.primaryColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.post.title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.hand_thumbsup,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.post.likes,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(
                        CupertinoIcons.clock,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.post.time,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            splashColor: ColorPalette.splashColor,
                            highlightColor: Colors.transparent,
                            iconSize: 16,
                            icon: widget.post.isBookmarked
                                ? const Icon(CupertinoIcons.bookmark_fill)
                                : const Icon(CupertinoIcons.bookmark),
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            onPressed: () {
                              setState(
                                () {
                                  widget.post.isBookmarked =
                                      !widget.post.isBookmarked;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}