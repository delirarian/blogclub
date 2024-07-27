import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/home/category_list.dart';
import 'package:blogclub/src/widgets/home/notification_icon.dart';
import 'package:blogclub/src/widgets/home/story_list.dart';
import 'package:blogclub/src/widgets/profile/post_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final stories = AppDatabase.stories;
    final posts = AppDatabase.posts;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Constants.homeTitle,
                      style: themeData.textTheme.titleMedium,
                    ),
                    notificationIcon(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 16),
                child: Text(
                  Constants.homeSubTitle,
                  style: themeData.textTheme.headlineMedium,
                ),
              ),
              StoryList(stories: stories),
              const SizedBox(
                height: 16,
              ),
              const CategoryList(),
              PostList(themeData: themeData, posts: posts),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
