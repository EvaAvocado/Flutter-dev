import 'dart:io';

import 'package:flutter/material.dart';

import '../pages/event_page.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({Key? key, this.event}) : super(key: key);
  final event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: ElevatedButton(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0)),
              child: event.img_url != null ?  Image.file(
                File(event.img_url.toString()),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ) :
                  Image.asset(
                    'assets/blank.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    event.name,
                    style: TextStyle(
                      color: Color.fromRGBO(27, 0, 87, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 00),
                    child: Text(
                      event.description.length > 10
                          ? event.description.replaceRange(
                              10, event.description.length, '...')
                          : event.description,
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
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => CurrentEvent(event: event)),
              ModalRoute.withName('/'));
        },
      ),
    );
  }
}
