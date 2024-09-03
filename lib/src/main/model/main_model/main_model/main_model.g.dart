// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'link': instance.link,
    };

MainModel _$MainModelFromJson(Map<String, dynamic> json) => MainModel(
      menu: (json['menu'] as List<dynamic>?)
          ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainModelToJson(MainModel instance) => <String, dynamic>{
      'menu': instance.menu,
    };
