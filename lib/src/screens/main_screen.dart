import 'package:blogclub/src/screens/tweet_screen.dart';
import 'package:blogclub/src/screens/article_screen.dart';
import 'package:blogclub/src/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:blogclub/src/screens/home_screen.dart';
import 'package:blogclub/src/screens/profile_screen.dart';
import 'package:blogclub/src/screens/search_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

const int homeIndex = 0;
const int articleIndex = 1;
const int tweetIndex = 2;
const int searchIndex = 3;
const int profileIndex = 4;

class _MainScreenState extends State<MainScreen> {
  int selectedScreenIndex = homeIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        onTap: (int index) {
          setState(
            () {
              selectedScreenIndex = index;
            },
          );
        }, selectedIndex: selectedScreenIndex,
      ),
      body: IndexedStack(
        index: selectedScreenIndex,
        children: [
          const HomeScreen(),
          const ArticleScreen(),
          TweetScreen(),
          const SearchScreen(),
          const ProfileScreen(),
        ],
      ),
    );
  }
}

