import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/screens/SignupPage.dart';
import 'package:interest_studio/screens/loginPage.dart';
import 'package:interest_studio/screens/homePage.dart';
import '../components/rounded_button.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcome_page';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(50.0),
              margin: EdgeInsets.only(top:45.0),
              child: Image.asset('images/interest studio final.png'),
            ),
            SizedBox(
              height: 40.0,
              width: 250.0,
            ),
            RoundedButton(
              colour: Colors.green,
              title: 'LOGIN',
              onPressed: (){
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),
            SizedBox(
              height: 20.0,
              width: 250.0,
            ),
            RoundedButton(

              colour: Colors.green,
              title: 'SIGN UP',
              onPressed: (){
                Navigator.pushNamed(context,SignupPage.id);
              },
            ),
            SizedBox(
              height: 20.0,
              width: 250.0,
            ),
            RoundedButton(

              colour: Colors.green,
              title: 'GO TO HOME',
              onPressed: (){
                Navigator.pushNamed(context,HomePage.id);
              },
            ),
          ],
        ),

      ),

    );
  }
}
