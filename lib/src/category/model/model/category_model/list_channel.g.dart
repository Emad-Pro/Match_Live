// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListChannel _$ListChannelFromJson(Map<String, dynamic> json) => ListChannel(
      tvgId: json['tvg-id'] as String?,
      tvgLogo: json['tvg-logo'] as String?,
      groupTitle: json['group-title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      userAgent: json['user-agent'] as String?,
    );

Map<String, dynamic> _$ListChannelToJson(ListChannel instance) =>
    <String, dynamic>{
      'tvg-id': instance.tvgId,
      'tvg-logo': instance.tvgLogo,
      'group-title': instance.groupTitle,
      'description': instance.description,
      'url': instance.url,
      'user-agent': instance.userAgent,
    };
