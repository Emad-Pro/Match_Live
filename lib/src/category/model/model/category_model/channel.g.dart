// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      categoryName: json['category_name'] as String?,
      listChannel: (json['list_channel'] as List<dynamic>?)
          ?.map((e) => ListChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'category_name': instance.categoryName,
      'list_channel': instance.listChannel,
    };
