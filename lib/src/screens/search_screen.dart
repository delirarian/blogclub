import 'package:blogclub/src/widgets/search/search_bar_text_field.dart';
import 'package:blogclub/src/widgets/search/serach_post_list.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SearchBarTextField(),
              SerachPostList(),
            ],
          ),
        ),
      ),
    );
  }
}
