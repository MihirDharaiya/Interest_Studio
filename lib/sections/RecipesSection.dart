import 'file:///E:/android/androidProjects/interest_studio/lib/info/ChineseInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/IndianInfo.dart';
import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/ItalianInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/MexicanInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/ThaiInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';

import '../InterestHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/InterestHeading.dart';
import '../main.dart';

class RecipesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'INDIAN',
          press: () {
            Navigator.pushNamed(context, IndianInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CHINESE',
          press: () {
            Navigator.pushNamed(context, ChineseInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'ITALIAN',
          press: () {
            Navigator.pushNamed(context, ItalianInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'MEXICAN',
          press: () {
            Navigator.pushNamed(context, MexicanInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'THAI',
          press: () {
            Navigator.pushNamed(context, ThaiInfo.id);
          },
        ),
      ]),
    );
  }
}
