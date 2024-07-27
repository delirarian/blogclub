import 'package:blogclub/src/screens/splash_screen.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: const ColorScheme.light(
          primary: ColorPalette.primaryColor,
          onPrimary: ColorPalette.onPrimaryColor,
          background: ColorPalette.backgroundColor,
          onBackground: ColorPalette.onBackgroundColor,
          surface: ColorPalette.surfaceColor,
        ),
        appBarTheme: AppBarTheme(
          titleSpacing: 32,
          backgroundColor: ColorPalette.appBarBackgroundColor,
          foregroundColor: ColorPalette.primaryTextColor,
          elevation: 0,
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: ColorPalette.primaryColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                fontFamily: Constants.defaultFontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: ColorPalette.primaryColor,
              ),
            ),
          ),
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            color: ColorPalette.primaryTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          titleMedium: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            color: ColorPalette.secondaryTextColor,
            fontWeight: FontWeight.w200,
            fontSize: 18,
          ),
          titleLarge: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            fontWeight: FontWeight.bold,
            color: ColorPalette.primaryTextColor,
            fontSize: 18,
          ),
          headlineMedium: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            fontWeight: FontWeight.w700,
            color: ColorPalette.primaryTextColor,
            fontSize: 24,
          ),
          headlineSmall: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            fontWeight: FontWeight.w700,
            color: ColorPalette.primaryTextColor,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            color: ColorPalette.secondaryTextColor,
            fontSize: 12,
          ),
          bodySmall: TextStyle(
            fontFamily: Constants.defaultFontFamily,
            fontWeight: FontWeight.w700,
            color: ColorPalette.tertiaryTextColor,
            fontSize: 10,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
