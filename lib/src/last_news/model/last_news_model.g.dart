// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastNewsModel _$LastNewsModelFromJson(Map<String, dynamic> json) =>
    LastNewsModel(
      titleAr: json['titleAr'] as String?,
      titleEn: json['titleEn'] as String?,
      contentAr: json['contentAr'] as String?,
      contentEn: json['contentEn'] as String?,
      image: json['image'] as String?,
      publish: json['publish'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$LastNewsModelToJson(LastNewsModel instance) =>
    <String, dynamic>{
      'titleAr': instance.titleAr,
      'titleEn': instance.titleEn,
      'contentAr': instance.contentAr,
      'contentEn': instance.contentEn,
      'image': instance.image,
      'publish': instance.publish,
      'date': instance.date,
    };
