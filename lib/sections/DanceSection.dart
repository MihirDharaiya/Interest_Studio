import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'package:interest_studio/info/ClassicalInfo.dart';
import 'package:interest_studio/info/FolkInfo.dart';
import 'package:interest_studio/info/HiphopInfo.dart';
import 'package:interest_studio/info/JazzInfo.dart';
import 'package:interest_studio/info/KathakInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';

import '../InterestHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/InterestHeading.dart';
import '../main.dart';

class DanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'HIPHOP',
          press: () {
            Navigator.pushNamed(context, HiphopInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'CLASSICAL',
          press: () {
            Navigator.pushNamed(context, ClassicalInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'FOLK',
          press: () {
            Navigator.pushNamed(context, FolkInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'KATHAK',
          press: () {
            Navigator.pushNamed(context, KathakInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'JAZZ',
          press: () {
            Navigator.pushNamed(context, JazzInfo.id);
          },
        ),
      ]),
    );
  }
}
