import 'package:flutter_str/entity/location.dart';
import 'package:hive/hive.dart';

import 'character.dart';

part 'event.g.dart';

@HiveType(typeId: 1)
class Event extends HiveObject{

  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  HiveList<Character>? characters;
  @HiveField(3)
  HiveList<Location>? locations;

  Event({
    required this.title,required this.description, required this.characters, required this.locations
  });
}