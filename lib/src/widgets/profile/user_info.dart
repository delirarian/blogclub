import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(Constants.profileUserNameTitle),
        const SizedBox(
          height: 4,
        ),
        Text(
          Constants.profileFullNameTitle,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          Constants.profileJobTitle,
          style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: themeData.colorScheme.primary,
              ),
        ),
      ],
    );
  }
}
