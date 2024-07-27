import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/cupertino.dart';

Widget tweetItemProfileImage() {
  return ClipOval(
    child: SizedBox.fromSize(
      size: const Size.fromRadius(22), // Image radius
      child: Image.asset(
        Constants.tweetItemProfileImage,
        width: 42,
        height: 42,
        fit: BoxFit.cover,
      ),
    ),
  );
}
