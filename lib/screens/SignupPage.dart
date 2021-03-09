import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interest_studio/screens/loginPage.dart';

import 'package:interest_studio/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/components/Reusable.dart';



class SignUpPage extends StatefulWidget {
  static const String id = 'signUp_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String password;
  String confirmPassword;
  String name;
  String number;
  // DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SignUp')),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(40.0),
                margin: EdgeInsets.only(top: 2.0),
                child: Image.asset('images/interest studio final.png'),
              ),
              Text('Hello There',style: TextStyle(color: Colors.black,
                  fontSize: getProportionateScreenWidth(25),
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('SignUp With Your Details As Mentioned Below :::',
              textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(50.0),
              ),
              Fields(
                icons: Icon(Icons.person,
                color: kPrimaryColor),
                string: 'Enter Your Name ', s: false,
                press: (value){
                  name = value;
                },
              ),
              Fields(
                icons: Icon(Icons.phone,
                color: kPrimaryColor),
                string: 'Enter your Phone No', s: false,
                press: (value){
                  number = value;
                },
              ),

              Fields(
                icons: Icon(Icons.email,
                color: kPrimaryColor),
                string: 'Enter Your Email',
                s: false,
                inputType: TextInputType.emailAddress,
                press: (value){
                  email = value;
                },
              ),
              Fields(
                icons: Icon(Icons.lock,
                color: kPrimaryColor),
                string: 'Create Password', s: true,
                press: (value){
                  password = value;
                },
              ),
              Fields(
                icons: Icon(Icons.lock,
                color: kPrimaryColor),
                string: 'Confirm Password', s: true,
                press: (value) {
                  confirmPassword = value;
                }
              ),
              Padding(
                padding:  EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: FlatButton(
                    onPressed: () async {
                      try {

                          final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                          if(newUser != null){
                              Navigator.pushNamed(context, LoginPage.id);
                          }
                      }
                      catch(e){
                        print(e);
                      }
                    },
                    color: kPrimaryColor,
                    child: Text('LOGIN',
                    style: TextStyle(fontSize: getProportionateScreenWidth(18.0),
                        color: Colors.white
                    ),
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}