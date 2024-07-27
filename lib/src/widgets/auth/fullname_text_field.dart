import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget FullnameTextField() {
  return const TextField(
    decoration: InputDecoration(
      label: Text(Constants.authFullNameTitle),
    ),
  );
}
