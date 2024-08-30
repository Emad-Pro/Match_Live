import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'last_news_model.g.dart';

@JsonSerializable()
class LastNewsModel {
  final String? titleAr;
  final String? titleEn;
  final String? contentAr;
  final String? contentEn;
  final String? image;

  final String? publish;
  final String? date;

  LastNewsModel(
      {this.titleAr,
      this.titleEn,
      this.contentAr,
      this.contentEn,
      this.image,
      required this.publish,
      required this.date});
}
