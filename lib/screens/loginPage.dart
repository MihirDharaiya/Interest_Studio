import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import '../components/Reusable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
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
              string: 'Enter Your Email', s: false,
              press: (value){
                email = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Fields(
              string: 'Enter Password ', s: true,
              press: (value){
                password = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.green,
              onPressed:() async{
                  try{
                    final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                    if(user != null){
                        Navigator.pushNamed(context, HomePage.id);
                    }
                  }
                  catch(e){
                    print(e);
                  }
                  },
            ),
          ],
        ),
      ),
    );
  }
}