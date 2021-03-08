import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/screens/loginPage.dart';
import '../main.dart';
import 'package:interest_studio/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/components/Reusable.dart';


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
                  password = value;
                }
              ),
              Padding(
                padding:  EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: FlatButton(
                    color: kPrimaryColor,
                    onPressed: (){
                      Navigator.pushNamed(context, LoginPage.id);
                    }, child: Text('LOGIN',
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