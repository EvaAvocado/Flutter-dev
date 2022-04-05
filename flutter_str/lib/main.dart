//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:intl/intl.dart';
import 'package:drop_cap_text/drop_cap_text.dart';

void main() async {
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
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                          child: Text(
                            "search",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(244, 216, 39, 1),
                                fontSize: 42),
                          ),
                        ),
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
                                      builder: (context) => AllCharacters()));
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
                            onPressed: () {},
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
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Divider(
              height: 580,
              thickness: 1,
              color: Color.fromRGBO(244, 216, 39, 1),
              indent: 80,
              endIndent: 80,
            ),
          ],
        ),
      ),
    );
  }
}

class AllCharacters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/background.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 100),
              width: double.infinity,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                            child: Image.asset(
                              "assets/demon.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Demon",
                                  style: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 00),
                                  child: Text(
                                    "She live in the Hell,\nshe like music and...",
                                    style: TextStyle(
                                      color: Color.fromRGBO(27, 0, 87, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(300, 120),
                        primary: Color.fromRGBO(244, 216, 39, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentCharacter()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                            child: Image.asset(
                              "assets/softGirl.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Soft Girl",
                                  style: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 00),
                                  child: Text(
                                    "She live in the house,\nshe like read and...",
                                    style: TextStyle(
                                      color: Color.fromRGBO(27, 0, 87, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(300, 120),
                        primary: Color.fromRGBO(244, 216, 39, 1),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                            child: Image.asset(
                              "assets/bunnyGirl.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Bunny girl",
                                  style: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 00),
                                  child: Text(
                                    "She live in the hole,\nshe like eat and...",
                                    style: TextStyle(
                                      color: Color.fromRGBO(27, 0, 87, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(300, 120),
                        primary: Color.fromRGBO(244, 216, 39, 1),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                            child: Image.asset(
                              "assets/witch.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Witch",
                                  style: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 00),
                                  child: Text(
                                    "She live in the house,\nshe like conjure and...",
                                    style: TextStyle(
                                      color: Color.fromRGBO(27, 0, 87, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(300, 120),
                        primary: Color.fromRGBO(244, 216, 39, 1),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(310, 710, 0, 0),
            child: ElevatedButton(
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 216, 39, 1),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(27, 0, 87, 1).withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "+",
                  style: TextStyle(
                    color: Color.fromRGBO(27, 0, 87, 1),
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(60, 60),
                primary: Color.fromRGBO(244, 216, 39, 1),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class CurrentCharacter extends StatefulWidget {
  @override
  State<CurrentCharacter> createState() => _CurrentCharacterState();
}

class _CurrentCharacterState extends State<CurrentCharacter> {
  bool textFormField = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/background.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 60),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          initialValue: "Demon",
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(244, 216, 39, 1),
                              fontSize: 55,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          style: TextStyle(
                            color: Color.fromRGBO(244, 216, 39, 1),
                            fontSize: 55,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                          color: Color.fromRGBO(244, 216, 39, 1),
                          indent: 0,
                          endIndent: 80,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                child: Container(
                                  child: textFormField
                                      ? TextButton(
                                          child: DropCapText(
                                            "She live in the Hell, she like music and eat humans like you. A demon is a supernatural entity, typically associated with evil, prevalent historically in religion, occultism, literature, fiction, mythology, and folklore; as well as in media such as comics, video games, movies, anime, and television series.In Ancient Near Eastern religions and in the Abrahamic traditions, including ancient and medieval Christian demonology, a demon is considered a harmful spiritual entity which may cause demonic possession, calling for an exorcism. Large portions of the Jewish demonology, a key influence on Christianity and Islam, originated from a later form of Zoroastrianism, and were transferred to Judaism during the Persian era.",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  244, 216, 39, 1),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            dropCapPadding:
                                                EdgeInsets.only(right: 10.0),
                                            dropCap: DropCap(
                                              width: 150,
                                              height: 250,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15.0),
                                                    bottomLeft:
                                                        Radius.circular(15.0),
                                                    topRight:
                                                        Radius.circular(15.0),
                                                    bottomRight:
                                                        Radius.circular(15.0)),
                                                child: Image.asset(
                                                  "assets/demon.jpg",
                                                  height: 250,
                                                  width: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(
                                              () {
                                                textFormField = false;
                                              },
                                            );
                                          },
                                        )
                                      : Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(15, 0, 10, 0),
                                          child: TextFormField(
                                            initialValue:
                                                "She live in the Hell, she like music and eat humans like you. A demon is a supernatural entity, typically associated with evil, prevalent historically in religion, occultism, literature, fiction, mythology, and folklore; as well as in media such as comics, video games, movies, anime, and television series.In Ancient Near Eastern religions and in the Abrahamic traditions, including ancient and medieval Christian demonology, a demon is considered a harmful spiritual entity which may cause demonic possession, calling for an exorcism. Large portions of the Jewish demonology, a key influence on Christianity and Islam, originated from a later form of Zoroastrianism, and were transferred to Judaism during the Persian era.",
                                            minLines: 1,
                                            maxLines: 1000,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Description",
                                              hintStyle: TextStyle(
                                                color: Color.fromRGBO(
                                                    27, 0, 87, 1),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  244, 216, 39, 1),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                          color: Color.fromRGBO(244, 216, 39, 1),
                          indent: 0,
                          endIndent: 80,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 10, 0),
                          child: Container(
                            height: 40,
                            width: 250,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 216, 39, 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextFormField(
                                initialValue: "Locations: Hell, House, Ocean",
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Locations",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color.fromRGBO(27, 0, 87, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                          child: Container(
                            height: 60,
                            width: 300,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 216, 39, 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                              child: TextFormField(
                                initialValue:
                                    "Events: first meeting, difficult choise,\na trip to the hell",
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Events",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(27, 0, 87, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color.fromRGBO(27, 0, 87, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
