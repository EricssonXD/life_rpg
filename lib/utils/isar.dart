import 'package:isar/isar.dart';
import 'package:life_rpg/features/quests/quests_model.dart';
import 'package:path_provider/path_provider.dart';

class IsarManager {
  static Isar? _isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();

    _isar = Isar.open(
      schemas: [QuestSchema],
      directory: dir.path,
    );
  }

  static Isar get isar {
    return Isar.get(schemas: [QuestSchema]);
  }
}
