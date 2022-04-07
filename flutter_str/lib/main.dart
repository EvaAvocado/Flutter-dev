//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_str/pages/all_events_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'entity/character.dart';
import 'entity/event.dart';
import 'entity/location.dart';
import 'pages/all_characters_page.dart';
import 'pages/all_locations_page.dart';

void main() async {
  Hive.registerAdapter(CharacterAdapter());
  Hive.registerAdapter(LocationAdapter());
  Hive.registerAdapter(EventAdapter());
  await Hive.initFlutter();
  await Hive.openBox('characterBox');
  await Hive.openBox('locationBox');
  await Hive.openBox('eventBox');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StoryStore',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/background.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Builder(
              builder: (context) {
                return SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(top: 200),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: ElevatedButton(
                            child: Text(
                              "characters",
                              style: TextStyle(
                                color: Color.fromRGBO(27, 0, 87, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(300, 80),
                              primary: Color.fromRGBO(244, 216, 39, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllCharacters(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: ElevatedButton(
                            child: Text(
                              "locations",
                              style: TextStyle(
                                color: Color.fromRGBO(27, 0, 87, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(300, 80),
                              primary: Color.fromRGBO(244, 216, 39, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllLocations(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: ElevatedButton(
                            child: Text(
                              "plot",
                              style: TextStyle(
                                color: Color.fromRGBO(27, 0, 87, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(300, 80),
                              primary: Color.fromRGBO(244, 216, 39, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllEvents(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
