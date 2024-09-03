import 'package:json_annotation/json_annotation.dart';

import 'list_channel.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  @JsonKey(name: 'category_name')
  String? categoryName;
  @JsonKey(name: 'list_channel')
  List<ListChannel>? listChannel;

  Channel({this.categoryName, this.listChannel});

  factory Channel.fromJson(Map<String, dynamic> json) {
    return _$ChannelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
