import 'package:flutter/material.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/constants.dart';
import '../components/rounded_button.dart';
import '../components/Reusable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomePage.dart';
import 'package:interest_studio/constants.dart';
import 'package:interest_studio/screens/HomePage.dart';


class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool remember;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('LogIn')),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(50.0),
                margin: EdgeInsets.only(top: 45.0),
                child: Image.asset('images/interest studio final.png'),
              ),
              SizedBox(
                height: 20.0,
              ),
              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   textAlign: TextAlign.center,
              //   decoration: InputDecoration(
              //       hintText: 'Enter Your Email'
              //   ),
              // ),

              Fields(
                icons: Icon(Icons.person,
                  color: kPrimaryColor,
                ),
                string: 'Enter Your Email', s: false,
                press: (value){
                  email = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Fields(
                icons: Icon(Icons.lock,
                color: kPrimaryColor,),
                string: 'Enter Password ', s: true,
                press: (value){
                  password = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text('Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: FlatButton(
                    color: kPrimaryColor,
                    onPressed: (){
                      Navigator.pushNamed(context, Home_page.id);
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