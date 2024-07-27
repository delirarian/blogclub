import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget articleFloatingActionButton(ThemeData themeData, BuildContext context) {
  return Container(
    width: 111,
    height: 48,
    decoration: BoxDecoration(
      color: themeData.colorScheme.primary,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: themeData.colorScheme.primary.withOpacity(0.5),
        ),
      ],
    ),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Constants.articleThumbsImage,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            Constants.articleLikesNumber,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: themeData.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    ),
  );
}
