import 'package:json_annotation/json_annotation.dart';

import 'channel.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  List<Channel>? channel;

  CategoryModel({this.channel});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
