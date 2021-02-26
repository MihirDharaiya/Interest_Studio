import 'package:flutter/material.dart';
import 'package:interest_studio/info/CodInfo.dart';
import 'package:interest_studio/info/CsgoInfo.dart';
import 'package:interest_studio/info/GtaInfo.dart';
import 'package:interest_studio/info/PubgInfo.dart';
import 'package:interest_studio/info/Valorant.dart';
class EsportsMore extends StatefulWidget {
  static const String id = 'esports_more';
  @override
  _EsportsMoreState createState() => _EsportsMoreState();
}

class _EsportsMoreState extends State<EsportsMore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'ESPORTS',
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
            Navigator.pushNamed(context, ValorantInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('VALORANT',
                style: TextStyle(
                  fontSize: 18.0,
                ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, CsgoInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('COUNTER STRIKE GLOBAL OFFENSIVE',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, PubgInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('PUBG',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, CodInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('CALL OF DUTY',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, GtaInfo.id);
          },
          child: Card(
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('GRAND THEFT AUTO',
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

