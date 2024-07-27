// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweets.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TweetsAdapter extends TypeAdapter<TweetEntity> {
  @override
  final int typeId = 0;

  @override
  TweetEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TweetEntity()
      ..name = fields[0] as String
      ..userName = fields[1] as String
      ..tweet = fields[2] as String
      ..blueTick = fields[3] as bool;
  }

  @override
  void write(BinaryWriter writer, TweetEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.tweet)
      ..writeByte(3)
      ..write(obj.blueTick);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TweetsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
