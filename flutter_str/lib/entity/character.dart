import 'package:hive/hive.dart';


part 'character.g.dart';

@HiveType(typeId: 1)
class Character extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String events;
  @HiveField(3)
  String locations;
  @HiveField(4)
  String? img_url;
  @HiveField(5)
  String? pk;

  Character(
      {required this.name,
      required this.description,
      required this.events,
      required this.locations,
      this.pk = null,
      this.img_url = null});
}
