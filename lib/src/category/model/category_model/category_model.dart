import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final int id;
  final String name;
  final CategoryEnum category;
  final String? logo;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.category,
      this.logo});
}

enum CategoryEnum { series, live, movies }
