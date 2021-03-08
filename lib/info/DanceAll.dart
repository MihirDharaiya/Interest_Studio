import 'package:flutter/material.dart';
import 'package:interest_studio/components/ReusableContainer.dart';

class DanceAll extends StatefulWidget {
  static const String id= 'Dance_all';
  @override
  _DanceAllState createState() => _DanceAllState();
}

class _DanceAllState extends State<DanceAll> {
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
                'DANCE',
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
                title: 'HIPHOP',
                image: 'https://images.unsplash.com/photo-1544274367-aafa64a78bac?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8aGlwaG9wJTIwZGFuY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                title: 'KATHAK',
                image: 'https://images.unsplash.com/photo-1479812627010-aa5bd9d173b1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8a2F0aGFrJTIwZGFuY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                title: 'FREESTYLE',
                image: 'https://images.unsplash.com/photo-1474308371634-c715850e8d8b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZyZWVzdHlsZSUyMGRhbmNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                title: 'JAZZ',
                image: 'https://images.unsplash.com/photo-1534971142555-884e9edc15e9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8amF6eiUyMGRhbmNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                title: 'CONTEMPORARY',
                image: 'https://images.unsplash.com/photo-1567498781807-f3aac403de07?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvbnRlbXBvcmFyeSUyMGRhbmNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),



            ],
          ),
        ),
      ),
    );
  }
}



