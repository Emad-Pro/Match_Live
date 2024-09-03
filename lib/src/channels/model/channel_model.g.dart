// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) => ChannelModel(
      iD: (json['iD'] as num).toInt(),
      name: json['name'] as String,
      logo: json['logo'] as String?,
      linksPlayer: (json['linksPlayer'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChannelModelToJson(ChannelModel instance) =>
    <String, dynamic>{
      'iD': instance.iD,
      'name': instance.name,
      'logo': instance.logo,
      'linksPlayer': instance.linksPlayer,
    };
