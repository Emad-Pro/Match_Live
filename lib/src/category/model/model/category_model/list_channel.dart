import 'package:json_annotation/json_annotation.dart';

part 'list_channel.g.dart';

@JsonSerializable()
class ListChannel {
  @JsonKey(name: 'tvg-id')
  String? tvgId;
  @JsonKey(name: 'tvg-logo')
  String? tvgLogo;
  @JsonKey(name: 'group-title')
  String? groupTitle;
  String? description;
  String? url;
  @JsonKey(name: 'user-agent')
  String? userAgent;

  ListChannel({
    this.tvgId,
    this.tvgLogo,
    this.groupTitle,
    this.description,
    this.url,
    this.userAgent,
  });

  factory ListChannel.fromJson(Map<String, dynamic> json) {
    return _$ListChannelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListChannelToJson(this);
}
