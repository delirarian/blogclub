import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget appLogoImage() {
  return SvgPicture.asset(
    Constants.appLogoImage,
    width: 100,
  );
}
