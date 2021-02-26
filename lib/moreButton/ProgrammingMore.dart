import 'package:flutter/material.dart';
import 'package:interest_studio/info/CpInfo.dart';
import 'package:interest_studio/info/CppInfo.dart';
import 'package:interest_studio/info/FlutterInfo.dart';
import 'package:interest_studio/info/JavaInfo.dart';
import 'package:interest_studio/info/PythonInfo.dart';
class ProgrammingMore extends StatefulWidget {
  static const String id = 'programming_more';
  @override
  _ProgrammingMoreState createState() => _ProgrammingMoreState();
}

class _ProgrammingMoreState extends State<ProgrammingMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'PROGRAMMING',
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
    Navigator.pushNamed(context, FlutterInfo.id);
    },
    child: Card(
    elevation: 10.0,

    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
    child: Center(
    child: Text('FLUTTER',
    style: TextStyle(
    fontSize: 18.0,
    ),),
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, JavaInfo.id);
    },
    child: Card(
    elevation: 10.0,

    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
    child: Center(
    child: Text('JAVA',
    style: TextStyle(
    fontSize: 18.0,
    ),),
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, PythonInfo.id);
    },
    child: Card(
    elevation: 10.0,

    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
    child: Center(
    child: Text('PYTHON',
    style: TextStyle(
    fontSize: 18.0,
    ),),
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, CproInfo.id);
    },
    child: Card(
    elevation: 10.0,

    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
    child: Center(
    child: Text('C PROGRAMMING',
    style: TextStyle(
    fontSize: 18.0,
    ),),
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: (){
    Navigator.pushNamed(context, CppInfo.id);
    },
    child: Card(
    elevation: 10.0,
    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
    child: Center(
    child: Text('C ++ ',
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


