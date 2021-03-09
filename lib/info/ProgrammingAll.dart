import 'package:flutter/material.dart';
import 'package:interest_studio/components/ReusableContainer.dart';
import 'package:interest_studio/info/DanceInfo/JazzInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/CppInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/FlutterInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/JavaScriptInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/PythonInfo.dart';

class ProgrammingAll extends StatefulWidget {
  static const String id= 'Programming_all';
  @override
  _ProgrammingAllState createState() => _ProgrammingAllState();
}

class _ProgrammingAllState extends State<ProgrammingAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PROGRAMMING',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   'Studio',
              //   style: TextStyle(
              //       color: kPrimaryColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 20),
              // ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, JazzInfo.id);
                },
                title: 'JAVA',
                image: 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGphdmF8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, PythonInfo.id);
                },
                title: 'PYTHON',
                image: 'https://images.unsplash.com/photo-1613677135043-a2512fbf49fa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHl0aG9uJTIwbGFuZ3VhZ2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, FlutterInfo.id);
                },
                title: 'FLUTTER',
                image: 'https://images.unsplash.com/photo-1510915228340-29c85a43dcfe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2dyYW1taW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, JavaScriptInfo.id);
                },
                title: 'JAVASCRIPT',
                image: 'https://images.unsplash.com/photo-1550439062-609e1531270e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHByb2dyYW1taW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, CppInfo.id);
                },
                title: 'C++',
                image: 'https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZ3JhbW1pbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),



            ],
          ),
        ),
      ),
    );
  }
}


