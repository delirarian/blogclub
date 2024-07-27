import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:blogclub/src/widgets/tweet/default_tweet_item.dart';
import 'package:blogclub/src/widgets/tweet/tweet_floating_action_button.dart';
import 'package:blogclub/src/widgets/tweet/tweet_item.dart';
import 'package:blogclub/src/widgets/tweet/tweets.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

//TODO:
class TweetScreen extends StatefulWidget {
  TweetScreen({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  State<TweetScreen> createState() => _TweetScreenState();
}

class _TweetScreenState extends State<TweetScreen> {
  @override
  Widget build(BuildContext context) {
    final box = Hive.box<TweetEntity>(Constants.tweetsBoxName);
    final themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorPalette.tweetScreenBackgroundColor,
      floatingActionButton: tweetFloatingActionButton(themeData, context),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      height: 38,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorPalette.lightGrey,
                      ),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            
                          });
                        },
                        controller: widget.controller,
                        cursorColor: ColorPalette.secondaryLightGrey,
                        decoration: InputDecoration(
                          hintText: Constants.searchHintTextTitle,
                          hintStyle: const TextStyle(
                            fontSize: 16.5,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24,
                            color: ColorPalette.secondaryLightGrey,
                          ),
                        ),
                        style: const TextStyle(
                          color: ColorPalette.black,
                          fontSize: 16.5,
                        ),
                      ),
                    ),
                  ),
                  const DefaultTweetItem(),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ), // Your custom search bar widget
            ),
            ValueListenableBuilder<Box<TweetEntity>>(
              builder: (context, box, child) {
                // ignore: prefer_typing_uninitialized_variables
                final items;
                if (widget.controller.text.isEmpty) {
                  items = box.values.toList();
                }else {
                  items = box.values.where((tweet) => tweet.tweet.toLowerCase().contains(widget.controller.text)).toList();
                }
                return SliverPadding(
                  padding: const EdgeInsets.all(1),
                  sliver: SliverList.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final TweetEntity tweets = items[index];
                      return TweetItem(tweets: tweets);
                    },
                  ),
                );
              },
              valueListenable: box.listenable(),
            ),
          ],
        ),
      ),
    );
  }
}
