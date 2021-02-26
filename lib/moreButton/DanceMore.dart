import 'package:flutter/material.dart';
import 'package:interest_studio/info/ClassicalInfo.dart';
import 'package:interest_studio/info/FolkInfo.dart';
import 'package:interest_studio/info/HiphopInfo.dart';
import 'package:interest_studio/info/JazzInfo.dart';
import 'package:interest_studio/info/KathakInfo.dart';
class DanceMore extends StatefulWidget {
  static const String id = 'dance_more';
  @override
  _DanceMoreState createState() => _DanceMoreState();
}

class _DanceMoreState extends State<DanceMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'DANCE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, HiphopInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Center(
                child: Text('HIPHOP',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ClassicalInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Center(
                child: Text('CLASSICAL',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, FolkInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Center(
                child: Text('FOLK',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, KathakInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Center(
                child: Text('KATHAK',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, JazzInfo.id);
          },
          child: Card(
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Center(
                child: Text('JAZZ',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
      ],),
    );
  }
}