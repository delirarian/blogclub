import 'package:blogclub/src/screens/auth_screen/login_screen.dart';
import 'package:blogclub/src/screens/auth_screen/signup_screen.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/auth/app_logo.dart';
import 'package:flutter/material.dart';

//*TODO: CUSTOMIZE AUTH TABS -> LOGIN TAB & SIGNUP TAB
int loginTab = 0;
int signupTab = 1;

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  int selectedTabIndex = loginTab;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: appLogo(),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: themeData.colorScheme.primary,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  selectedTabIndex = loginTab;
                                },
                              );
                            },
                            child: Text(
                              Constants.authLoginTabTitle.toUpperCase(),
                              style: tabTextStyle.apply(
                                color: selectedTabIndex == loginTab
                                    ? ColorPalette.selectedTabColor
                                    : ColorPalette.onSelectedTabColor,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  selectedTabIndex = signupTab;
                                },
                              );
                            },
                            child: Text(
                              Constants.authSignUpTabTitle.toUpperCase(),
                              style: tabTextStyle.apply(
                                color: selectedTabIndex == signupTab
                                    ? ColorPalette.selectedTabColor
                                    : ColorPalette.onSelectedTabColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          color: themeData.colorScheme.surface,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
                            child: selectedTabIndex == loginTab
                                ? Login(themeData: themeData)
                                : Signup(themeData: themeData),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const tabTextStyle = TextStyle(
  color: ColorPalette.onPrimaryColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
