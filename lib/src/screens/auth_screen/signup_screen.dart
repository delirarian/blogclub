import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/auth/auto_auth.dart';
import 'package:blogclub/src/widgets/auth/fullname_text_field.dart';
import 'package:blogclub/src/widgets/auth/password_text_field.dart';
import 'package:blogclub/src/widgets/auth/signup_button.dart';
import 'package:blogclub/src/widgets/auth/username_text_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Constants.authSignUpWelcomeMessage,
          style: themeData.textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          Constants.authSignUpHintMessage,
          style: themeData.textTheme.titleMedium!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        FullnameTextField(),
        const UsernameTextField(),
        const PasswordTextField(),
        const SizedBox(
          height: 24,
        ),
        const SignupButton(),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            Constants.authSocialMediaMessage,
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const AutoAuth(),
      ],
    );
  }
}
