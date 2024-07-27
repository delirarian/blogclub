import 'package:flutter/material.dart';

class SearchPostsItem extends StatelessWidget {
  final String imagePath;
  const SearchPostsItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 130,
      child: Image.asset(imagePath),
    );
  }
}
