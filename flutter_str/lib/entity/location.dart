import 'package:hive/hive.dart';


part 'location.g.dart';

@HiveType(typeId: 3)
class Location extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String characters;
  @HiveField(3)
  String events;
  @HiveField(4)
  String? img_url;
  @HiveField(5)
  String? pk;

  Location(
      {required this.name,
      required this.description,
      required this.characters,
      required this.events,
      this.pk = null,
      this.img_url = null});
}
