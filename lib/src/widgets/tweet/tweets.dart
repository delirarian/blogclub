import 'package:hive_flutter/hive_flutter.dart';
part 'tweets.g.dart';

@HiveType(typeId: 0)
class TweetEntity extends HiveObject {
  @HiveField(0)
  String name = '';
  @HiveField(1)
  String userName = '';
  @HiveField(2)
  String tweet = '';
  @HiveField(3)
  bool blueTick = false;
}
