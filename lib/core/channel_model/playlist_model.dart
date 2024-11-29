import 'package:isar/isar.dart';

part 'playlist_model.g.dart'; // مولد الكود

@collection
class ChannelListModel {
  Id id = Isar.autoIncrement;
  String? category;
  String? name;
  String? url;
  String? image;
}
