import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 8),
      child: Image.asset(Constants.onBoardingImage),
    );
  }
}
