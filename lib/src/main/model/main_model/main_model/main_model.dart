import 'package:json_annotation/json_annotation.dart';

part 'main_model.g.dart';

@JsonSerializable()
class Menu {
  final String? title;
  final String? icon;
  final String? link;

  Menu({
    required this.title,
    required this.icon,
    required this.link,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}

@JsonSerializable()
class MainModel {
  final List<Menu>? menu;

  MainModel({required this.menu});

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);

  Map<String, dynamic> toJson() => _$MainModelToJson(this);
}
