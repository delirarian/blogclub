import 'package:flutter/material.dart';

class ProfileCardShadow extends StatelessWidget {
  const ProfileCardShadow({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      left: 96,
      right: 96,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: themeData.colorScheme.onBackground.withOpacity(0.8),
            ),
          ],
        ),
      ),
    );
  }
}
