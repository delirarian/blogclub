import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/profile/profile_card_shadow.dart';
import 'package:blogclub/src/widgets/profile/profile_image.dart';
import 'package:blogclub/src/widgets/profile/user_activity.dart';
import 'package:blogclub/src/widgets/profile/user_description.dart';
import 'package:blogclub/src/widgets/profile/user_info.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 64),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: themeData.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: themeData.colorScheme.onBackground.withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                child: Row(
                  children: [
                    profileImage(),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: UserInfo(themeData: themeData),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: Text(
                  Constants.profileAboutMeTitle,
                  style: themeData.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 4, 32, 32),
                child: UserDescription(themeData: themeData),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        ProfileCardShadow(themeData: themeData),
        UserActivity(themeData: themeData),
      ],
    );
  }
}
