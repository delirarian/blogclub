import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/tweets.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddTweetScreen extends StatefulWidget {
  final TweetEntity tweets;
  const AddTweetScreen({
    super.key,
    required this.tweets,
  });

  @override
  State<AddTweetScreen> createState() => _AddTweetScreenState();
}

class _AddTweetScreenState extends State<AddTweetScreen> {
  late final TextEditingController nameContrller =
      TextEditingController(text: widget.tweets.name);
  late final TextEditingController userNameContrller =
      TextEditingController(text: widget.tweets.userName);
  late final TextEditingController tweetContrller =
      TextEditingController(text: widget.tweets.tweet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            nameTextField(),
            usernameTextField(),
            tweetTextField(),
            AddTweetSaveButton(
              widget: widget,
              nameContrller: nameContrller,
              userNameContrller: userNameContrller,
              tweetContrller: tweetContrller,
            ),
          ],
        ),
      ),
    );
  }

  Widget tweetTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        controller: tweetContrller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          hintText: Constants.addTweetTextFieldTitle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget usernameTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        controller: userNameContrller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          hintText: Constants.addTweetUsernameTextFieldTitle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget nameTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        controller: nameContrller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          hintText: Constants.addTweetNameTextFieldTitle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class AddTweetSaveButton extends StatelessWidget {
  const AddTweetSaveButton({
    super.key,
    required this.widget,
    required this.nameContrller,
    required this.userNameContrller,
    required this.tweetContrller,
  });

  final AddTweetScreen widget;
  final TextEditingController nameContrller;
  final TextEditingController userNameContrller;
  final TextEditingController tweetContrller;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: TweetSaveButton(widget: widget, nameContrller: nameContrller, userNameContrller: userNameContrller, tweetContrller: tweetContrller, themeData: themeData),
      ),
    );
  }
}

class TweetSaveButton extends StatelessWidget {
  const TweetSaveButton({
    super.key,
    required this.widget,
    required this.nameContrller,
    required this.userNameContrller,
    required this.tweetContrller,
    required this.themeData,
  });

  final AddTweetScreen widget;
  final TextEditingController nameContrller;
  final TextEditingController userNameContrller;
  final TextEditingController tweetContrller;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.tweets.name = nameContrller.text;
        widget.tweets.userName = userNameContrller.text;
        widget.tweets.tweet = tweetContrller.text;
        if (widget.tweets.isInBox) {
          widget.tweets.save();
        } else {
          final Box<TweetEntity> box = Hive.box(Constants.tweetsBoxName);
          box.add(widget.tweets);
        }
        Navigator.of(context).pop();
      },
      style: ButtonStyle(
        backgroundColor:
            WidgetStatePropertyAll(themeData.colorScheme.primary),
      ),
      child: Text(
        Constants.addTweetSaveButtonTitle,
        style: themeData.textTheme.titleMedium?.copyWith(
          color: themeData.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
