import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_model.g.dart';

@JsonSerializable()
class ChannelModel {
  final int iD;
  final String name;
  final String? logo;
  final List<String> linksPlayer;

  ChannelModel(
      {required this.iD,
      required this.name,
      this.logo,
      required this.linksPlayer});
}
