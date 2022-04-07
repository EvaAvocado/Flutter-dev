import 'dart:io';

import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_str/pages/all_characters_page.dart';

import '../entity/character.dart';
import '../hive_manager/hive_manager.dart';

class CurrentCharacter extends StatefulWidget {
  CurrentCharacter({Key? key, this.character}) : super(key: key);
  final character;

  @override
  State<CurrentCharacter> createState() => _CurrentCharacterState();
}

class _CurrentCharacterState extends State<CurrentCharacter> {
  bool textFormField = true;
  late Character c;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.c = widget.character != null
          ? widget.character
          : Character(
              name: '',
              description: '',
              events: '',
              locations: '',
              img_url: null);
    });
  }

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
                          initialValue: c.name,
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
                          onChanged: (val) {
                            setState(
                              () {
                                c.name = val;
                              },
                            );
                          },
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
                            GestureDetector(
                              child: DropCap(
                                width: 150,
                                height: 250,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        bottomLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                    child: c.img_url != null
                                        ? Image.file(
                                            File(this.c.img_url.toString()),
                                            // height: 250,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            'assets/blank.png',
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          )),
                              ),
                              onTap: () async {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles(
                                  type: FileType.custom,
                                  allowedExtensions: ['jpg'],
                                );

                                if (result != null) {
                                  String? path = result.files.single.path;
                                  print(path);
                                  setState(
                                    () {
                                      c.img_url = path;
                                    },
                                  );
                                } else {
                                  // User canceled the picker
                                }
                              },
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                                    child: TextFormField(
                                      initialValue: c.description,
                                      minLines: 1,
                                      maxLines: 1000,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Description",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(27, 0, 87, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: Color.fromRGBO(244, 216, 39, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            c.description = val;
                                          },
                                        );
                                      },
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
                                initialValue: c.locations,
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
                                onChanged: (val) {
                                  setState(
                                    () {
                                      c.locations = val;
                                    },
                                  );
                                },
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
                                initialValue: c.events,
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
                                onChanged: (val) {
                                  setState(
                                    () {
                                      c.events = val;
                                    },
                                  );
                                },
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
                ElevatedButton(
                  onPressed: () {
                    if (c.pk == null)
                      c.pk = c.name;
                    CharacterHive().save(c);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllCharacters(),
                        ),
                        ModalRoute.withName('/'),
                    );
                  },
                  child: Text("Сохранить"),
                ),
                ElevatedButton(
                  onPressed: () {
                    CharacterHive().delete(c);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllCharacters(),
                      ),
                      ModalRoute.withName('/'),
                    );
                  },
                  child: Text("Удалить"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
