import 'package:hive/hive.dart';
part 'Note_model.g.dart';
@HiveType(typeId: 0)
class NotModel extends HiveObject{

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NotModel(
      {required this.data,
      required this.color,
      required this.subtitle,
      required this.title});
}
