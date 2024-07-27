import 'package:blogclub/src/widgets/article/article_list.dart';
import 'package:blogclub/src/widgets/article/content_shadow.dart';
import 'package:blogclub/src/widgets/article/custom_appbar.dart';
import 'package:blogclub/src/widgets/article/article_floating_action_button.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: articleFloatingActionButton(themeData, context),
        backgroundColor: themeData.colorScheme.surface,
        body: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                customAppbar(),
                articleList(themeData, context),
              ],
            ),
            contentShadow(context, themeData),
          ],
        ),
      ),
    );
  }
}
