import 'package:flutter/material.dart';
import 'package:interest_studio/constants.dart';

import 'screens/loginPage.dart';
import 'screens/HomePage.dart';
import 'screens/welcomePage.dart';
import 'screens/SignupPage.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'components/theme.dart';
import 'package:interest_studio/info/DanceAll.dart';
import 'package:interest_studio/info/SportsAll.dart';
import 'package:interest_studio/info/ProgrammingAll.dart';
import 'package:interest_studio/info/RecipesAll.dart';
import 'package:interest_studio/info/EsportsAll.dart';
import 'package:interest_studio/screens/SignupPage.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InterestStudio());
}

class InterestStudio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id:(context)=>WelcomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignupPage.id:(context)=>SignupPage(),
        Home_page.id:(context)=>Home_page(),


        EsportsAll.id:(context)=>EsportsAll(),
        DanceAll.id:(context)=>DanceAll(),
        ProgrammingAll.id:(context)=>ProgrammingAll(),
        SportsAll.id:(context)=>SportsAll(),
        RecipesAll.id:(context)=>RecipesAll(),


      },
    );
  }
}


