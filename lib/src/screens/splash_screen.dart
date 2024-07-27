import 'package:blogclub/src/screens/onboarding_screen.dart';
import 'package:blogclub/src/widgets/splash/app_logo.dart';
import 'package:blogclub/src/widgets/splash/background.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: backgroundImage(),
          ),
          Center(
            child: appLogoImage(),
          ),
        ],
      ),
    );
  }
}