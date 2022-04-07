import 'package:flutter/material.dart';
import 'package:flutter_str/hive_manager/hive_manager.dart';
import 'package:flutter_str/pages/location_page.dart';

import '../components/location_widget.dart';

class AllLocations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var characters = LocationHive().getAll()!.toList();
    print(characters);
    List<LocationWidget> characterWidgets = [];
    characters.forEach((element) {
      characterWidgets.add(LocationWidget(location: element));
    });
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
                children: characterWidgets,
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
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => CurrentLocation()),
                    ModalRoute.withName('/')
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
