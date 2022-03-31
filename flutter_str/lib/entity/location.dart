import 'package:flutter_str/entity/event.dart';
import 'package:hive/hive.dart';

import 'character.dart';

part 'location.g.dart';

@HiveType(typeId: 1)
class Location extends HiveObject{

  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  HiveList<Character>? characters;
  @HiveField(3)
  HiveList<Event>? events;


  Location({
    required this.title,required this.description,required this.characters, required this.events
  });
}