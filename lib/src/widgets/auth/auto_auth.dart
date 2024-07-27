import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class AutoAuth extends StatelessWidget {
  const AutoAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return autoAuthItems();
  }

  Row autoAuthItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Constants.googleLogoImage,
          width: 36,
          height: 36,
        ),
        const SizedBox(
          width: 24,
        ),
        Image.asset(
          Constants.facebookLogoImage,
          width: 36,
          height: 36,
        ),
        const SizedBox(
          width: 24,
        ),
        Image.asset(
          Constants.twitterLogoImage,
          width: 36,
          height: 36,
        ),
      ],
    );
  }
}
