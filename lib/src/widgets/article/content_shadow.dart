import 'package:flutter/material.dart';

Widget contentShadow(BuildContext context, ThemeData themeData) {
  return Positioned(
    bottom: 0,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 116,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            themeData.colorScheme.surface,
            themeData.colorScheme.surface.withOpacity(0),
          ],
        ),
      ),
    ),
  );
}
