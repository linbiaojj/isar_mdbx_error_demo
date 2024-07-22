import 'package:isar/isar.dart';

part 'isar_log.g.dart';

@collection
class IsarLog {
  Id id = Isar.autoIncrement;

  String line = '';

  DateTime time = DateTime.now();
}
