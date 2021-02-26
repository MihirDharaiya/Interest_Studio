import 'file:///E:/android/androidProjects/interest_studio/lib/info/CpInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CppInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/FlutterInfo.dart';
import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/JavaInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/PythonInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';
import '../InterestHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/InterestHeading.dart';
import '../main.dart';

class ProgrammingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'FLUTTER',
          press: () {
            Navigator.pushNamed(context, FlutterInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'JAVA',
          press: () {
            Navigator.pushNamed(context, JavaInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'PYTHON',
          press: () {
            Navigator.pushNamed(context, PythonInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'C PROGRAMMING',
          press: () {
            Navigator.pushNamed(context, CproInfo.id);
          },
        ),
        InterestField(
          image: 'images/valorant-logo.jpg',
          title: 'C++',
          press: () {
            Navigator.pushNamed(context, CppInfo.id);
          },
        ),

      ]),
    );
  }
}
