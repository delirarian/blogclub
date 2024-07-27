import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/cupertino.dart';

Widget profileImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.asset(
      Constants.profileProfileImage,
      width: 84,
      height: 84,
    ),
  );
}
