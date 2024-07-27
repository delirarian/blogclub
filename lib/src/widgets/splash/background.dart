import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

//*COMPLETED
Widget backgroundImage() {
  return Image.asset(
    Constants.splashBackgroundImage,
    fit: BoxFit.cover,
  );
}
