import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'package:interest_studio/info/BadmintonInfo.dart';
import 'package:interest_studio/info/ChessInfo.dart';
import 'package:interest_studio/info/CricketInfo.dart';
import 'package:interest_studio/info/FootballInfo.dart';
import 'package:interest_studio/info/HockeyInfo.dart';
import '../InterestHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class SportsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CRICKET',
          press: () {
            Navigator.pushNamed(context, CricketInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'FOOTBALL',
          press: () {
            Navigator.pushNamed(context, FootballInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'HOCKEY',
          press: () {
            Navigator.pushNamed(context, HockeyInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CHESS',
          press: () {
            Navigator.pushNamed(context, ChessInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'BADMINTON',
          press: () {
            Navigator.pushNamed(context, BadmintonInfo.id);
          },
        ),
      ]),
    );
  }
}
