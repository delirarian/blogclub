import 'package:blogclub/app.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/tweets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();   
  Hive.registerAdapter(TweetsAdapter());
  await Hive.openBox<TweetEntity>(Constants.tweetsBoxName);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ColorPalette.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: ColorPalette.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const App());
}
