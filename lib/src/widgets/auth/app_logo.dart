import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

SvgPicture appLogo() {
  return SvgPicture.asset(
    Constants.appLogoImage,
    width: 120,
  );
}
