// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category: $enumDecode(_$CategoryEnumEnumMap, json['category']),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$CategoryEnumEnumMap[instance.category]!,
      'logo': instance.logo,
    };

const _$CategoryEnumEnumMap = {
  CategoryEnum.series: 'series',
  CategoryEnum.live: 'live',
  CategoryEnum.movies: 'movies',
};
