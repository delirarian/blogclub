import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        label: Text(Constants.authUserNameTitle),
      ),
    );
  }
}
