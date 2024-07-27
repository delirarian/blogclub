import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(Constants.authForgotPasswordHint),
        const SizedBox(
          width: 2,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(Constants.authResetPasswordTextButton),
        ),
      ],
    );
  }
}
