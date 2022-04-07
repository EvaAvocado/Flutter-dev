import 'package:hive/hive.dart';


part 'event.g.dart';

@HiveType(typeId: 2)
class Event extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String characters;
  @HiveField(3)
  String locations;

  @HiveField(4)
  String? img_url;
  @HiveField(5)
  String? pk;

  Event(
      {required this.name,
      required this.description,
      required this.characters,
      required this.locations,
      this.pk = null,
      this.img_url = null});
}
