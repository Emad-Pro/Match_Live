import 'package:isar/isar.dart';
import 'package:live_match/core/channel_model/playlist_model.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseService {
  static late final Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationSupportDirectory();
    isar = await Isar.open(
      [ChannelListModelSchema],
      directory: dir.path,
    );
  }

  Future<void> addData(List<ChannelListModel>? model) async {
    await isar
        .writeTxn(() => isar.channelListModels.putAll(model!))
        .then((value) {})
        .catchError((onError) {});
  }

  Future<List<ChannelListModel>> getData() async {
    return await isar.channelListModels.where().sortByName().findAll();
  }

  Future<void> deleteAllData() async {
    await isar.writeTxn(() => isar.channelListModels.clear());
  }

  Future removeWithId(int id) async {
    await isar.writeTxn(() => isar.channelListModels.delete(id));
  }
}
