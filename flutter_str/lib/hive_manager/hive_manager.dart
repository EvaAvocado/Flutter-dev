import 'dart:developer';
import 'package:flutter_str/entity/character.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../entity/event.dart';
import '../entity/location.dart';



class CharacterHive {
  static final CharacterHive _singleton = CharacterHive._internal();

  factory CharacterHive() {
    return _singleton;
  }

  CharacterHive._internal();

  void save(Character character){
    try{
      Hive.box('characterBox').put(character.pk.toString(), character);
      log("added");
      log(Hive.box('characterBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  void delete(Character character){
    try{
      Hive.box('characterBox').delete(character.pk.toString());
      log("deleted");
      log(Hive.box('characterBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  Iterable<Character>? getAll(){
    try{
      return Hive.box('characterBox').values.cast();
    }
    catch(e){
      log(e.toString());
    }
    return null;
  }

  bool isContains(Character character)=>
      Hive.box('characterBox').containsKey(character.pk.toString());

}

class LocationHive {
  static final LocationHive _singleton = LocationHive._internal();

  factory LocationHive() {
    return _singleton;
  }

  LocationHive._internal();

  void save(Location location){
    try{
      Hive.box('locationBox').put(location.pk.toString(), location);
      log("added");
      log(Hive.box('locationBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  void delete(Location location){
    try{
      Hive.box('locationBox').delete(location.pk.toString());
      log("deleted");
      log(Hive.box('locationBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  Iterable<Location>? getAll(){
    try{
      return Hive.box('locationBox').values.cast();
    }
    catch(e){
      log(e.toString());
    }
    return null;
  }

  bool isContains(Location location)=>
      Hive.box('locationBox').containsKey(location.pk.toString());

}


class EventHive {
  static final EventHive _singleton = EventHive._internal();

  factory EventHive() {
    return _singleton;
  }

  EventHive._internal();

  void save(Event event){
    try{
      Hive.box('eventBox').put(event.pk.toString(), event);
      log("added");
      log(Hive.box('eventBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  void delete(Event event){
    try{
      Hive.box('eventBox').delete(event.pk.toString());
      log("deleted");
      log(Hive.box('eventBox').toMap().toString());
    }
    catch(e){
      log(e.toString());
    }
  }

  Iterable<Event>? getAll(){
    try{
      return Hive.box('eventBox').values.cast();
    }
    catch(e){
      log(e.toString());
    }
    return null;
  }

  bool isContains(Event event)=>
      Hive.box('eventBox').containsKey(event.pk.toString());

}