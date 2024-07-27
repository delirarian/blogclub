import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

Widget defaultTweetItemContent() => const Text(
      Constants.defaultTweetTitle,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w100,
      ),
    );