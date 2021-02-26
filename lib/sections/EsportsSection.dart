import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';
import '../info/CsgoInfo.dart';
import '../InterestHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/PubgInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CodInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/GtaInfo.dart';

class EsportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'VALORANT',
          press: () {
            Navigator.pushNamed(context, ValorantInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CS GO',
          press: () {
            Navigator.pushNamed(context, CsgoInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'PUBG',
          press: () {
            Navigator.pushNamed(context, PubgInfo.id);
          },
        ),

        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'GTA',
          press: () {
            Navigator.pushNamed(context, GtaInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CALL OF DUTY',
          press: () {
            Navigator.pushNamed(context, CodInfo.id);
          },
        ),
      ]),
    );
  }
}
