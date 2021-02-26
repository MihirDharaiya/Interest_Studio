import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/screens/loginPage.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/components/Reusable.dart';
import '../main.dart';
import '../components/rounded_button.dart';

class SignupPage extends StatefulWidget {
  static const String id = 'signUp_page';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _auth = FirebaseAuth.instance;
  String name;
  String email;
  String password;
  int number;
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
              padding: EdgeInsets.all(40.0),
              margin: EdgeInsets.only(top: 2.0),
              child: Image.asset('images/interest studio final.png'),
            ),
            // Fields(
            //   string: 'Enter Your Name ', s: false,
            //   press: (value){
            //     name = value;
            //   },
            // ),
            // Fields(
            //   string: 'Enter your Phone No', s: false,
            //   press: (value){
            //     number = value;
            //   },
            // ),

            Fields(
              string: 'Enter Your Email', s: false,
              inputType: TextInputType.emailAddress,
              press: (value){
                email = value;
              },
            ),
            Fields(
              string: 'Create Password', s: true,
              press: (value){
                password = value;
              },
            ),
            Fields(
              string: 'Confirm Password', s: true,
              press: (value) {
                password = value;
              }
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.green,
              onPressed: () async {
                try{
                  final newUser = _auth.createUserWithEmailAndPassword(email: email, password: password);
                  if(newUser != null){
                    Navigator.pushNamed(context, LoginPage.id);
                  }
                }
                catch(e){
                  print(e);
                }
                },
            )
          ],
        ),
      ),
    );
  }
}