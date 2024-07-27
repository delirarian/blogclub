import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/widgets/profile/custom_appbar.dart';
import 'package:blogclub/src/widgets/profile/post_list.dart';
import 'package:blogclub/src/widgets/profile/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final posts = AppDatabase.posts;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              ProfileCard(themeData: themeData),
              PostList(themeData: themeData, posts: posts),
            ],
          ),
        ),
      ),
    );
  }
}


