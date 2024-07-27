import 'package:blogclub/src/screens/main_screen.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
        );
      },
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          Size(
            MediaQuery.of(context).size.width,
            60,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Text(
        Constants.authLoginButtonTitle.toUpperCase(),
      ),
    );
  }
}
