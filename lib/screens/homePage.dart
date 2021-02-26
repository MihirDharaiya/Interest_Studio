import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:interest_studio/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/InterestHeading.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/DanceSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/EsportsSection.dart';
import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'package:interest_studio/moreButton/DanceMore.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/ProgrammingSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/RecipesSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/SportsSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';
import 'package:interest_studio/moreButton/EsportsMore.dart';
import 'package:interest_studio/moreButton/ProgrammingMore.dart';
import 'package:interest_studio/moreButton/RecipesMore.dart';
import 'package:interest_studio/moreButton/SportsMore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth ;
auth.User loggedInUser;
class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser(){
    try{
      final user =  _auth.currentUser;
      if(user !=null){
        loggedInUser = user;

      }
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // automaticallyImplyLeading: false,
        title:
           Text('INTEREST STUDIO'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Text('Your Profile',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0
              ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.tealAccent[50],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [InterestHeading(
                    interestName: 'ESPORTS',
                  ),
                  RoundedButton(
                    colour: Colors.green,
                    title: 'More',
                    onPressed: (){
                      Navigator.pushNamed(context, EsportsMore.id);},),],
                ),
                EsportSection(),
                Row(
                  children: [InterestHeading(
                    interestName: 'PROGRAMMING',
                  ),
                    RoundedButton(

                      colour: Colors.green,
                      title: 'More',
                      onPressed: (){
                        Navigator.pushNamed(context, ProgrammingMore.id);},),],
                ),
                ProgrammingSection(),
                Row(
                  children: [InterestHeading(
                    interestName: 'RECIPES',
                  ),
                    RoundedButton(
                      colour: Colors.green,
                      title: 'More',
                      onPressed: (){
                        Navigator.pushNamed(context, RecipesMore.id);},),],
                ),
                RecipesSection(),
                Row(
                  children: [InterestHeading(
                    interestName: 'DANCE',
                  ),
                    RoundedButton(
                      colour: Colors.green,
                      title: 'More',
                      onPressed: (){
                        Navigator.pushNamed(context, DanceMore.id);},),],
                ),
                DanceSection(),
                Row(
                  children: [InterestHeading(
                    interestName: 'SPORTS',
                  ),
                    RoundedButton(
                      colour: Colors.green,
                      title: 'More',
                      onPressed: (){
                        Navigator.pushNamed(context, SportsMore.id);},),],
                ),
                SportsSection(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: BACK TO 1 POSITION AFTER SCROLLING UP.
//TODO: IMAGES CHANGES
