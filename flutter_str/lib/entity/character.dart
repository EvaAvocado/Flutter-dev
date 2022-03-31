import 'package:flutter_str/entity/event.dart';
import 'package:hive/hive.dart';

import 'location.dart';

part 'character.g.dart';

@HiveType(typeId: 1)
class Character extends HiveObject {

  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  HiveList<Event>? events;
  @HiveField(3)
  HiveList<Location>? locations;



  Character({
    required this.name, required this.description, required this.events, required this.locations
});
}