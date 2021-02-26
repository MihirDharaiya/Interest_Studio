import 'package:flutter/material.dart';
import 'package:interest_studio/info/BadmintonInfo.dart';
import 'package:interest_studio/info/ChessInfo.dart';
import 'package:interest_studio/info/CricketInfo.dart';
import 'package:interest_studio/info/FootballInfo.dart';
import 'package:interest_studio/info/HockeyInfo.dart';
class SportsMore extends StatefulWidget {
  static const String id = 'sports_more';
  @override
  _SportsMoreState createState() => _SportsMoreState();
}

class _SportsMoreState extends State<SportsMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'SPORTS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, CricketInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('CRICKET',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, FootballInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('FOOTBALL',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, HockeyInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('HOCKEY',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ChessInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('CHESS',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, BadmintonInfo.id);
          },
          child: Card(
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('BADMINTON',
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
