import 'package:flutter/material.dart';
import 'package:interest_studio/info/DanceInfo/ContemInfo.dart';
import 'package:interest_studio/info/DanceInfo/FreeStyleInfo.dart';
import 'package:interest_studio/info/DanceInfo/HiphopInfo.dart';
import 'package:interest_studio/info/DanceInfo/JazzInfo.dart';
import 'package:interest_studio/info/DanceInfo/KathakInfo.dart';
import 'package:interest_studio/info/EsportsInfo/CodInfo.dart';
import 'package:interest_studio/info/EsportsInfo/CsgoInfo.dart';
import 'package:interest_studio/info/EsportsInfo/GtaInfo.dart';
import 'package:interest_studio/info/EsportsInfo/PubgInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/CppInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/FlutterInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/JavaInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/JavaScriptInfo.dart';
import 'package:interest_studio/info/ProgrammingInfo/PythonInfo.dart';
import 'package:interest_studio/info/RecipesInfo/ChineseInfo.dart';
import 'package:interest_studio/info/RecipesInfo/IndianInfo.dart';
import 'package:interest_studio/info/RecipesInfo/ItalianInfo.dart';
import 'package:interest_studio/info/RecipesInfo/SpanishInfo.dart';
import 'package:interest_studio/info/RecipesInfo/ThaiInfo.dart';
import 'package:interest_studio/info/SportsInfo/BasketBallInfo.dart';
import 'package:interest_studio/info/SportsInfo/CricketInfo.dart';
import 'package:interest_studio/info/SportsInfo/FootBallInfo.dart';
import 'package:interest_studio/info/SportsInfo/HockeyInfo.dart';
import 'package:interest_studio/info/SportsInfo/VolleyBallInfo.dart';
import 'file:///E:/android/androidProjects/Interest_Studio2/lib/info/EsportsInfo/ValoInfo.dart';
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
        SignUpPage.id:(context)=>SignUpPage(),
        HomePage.id:(context)=>HomePage(),
        EsportsAll.id:(context)=>EsportsAll(),
        DanceAll.id:(context)=>DanceAll(),
        ProgrammingAll.id:(context)=>ProgrammingAll(),
        SportsAll.id:(context)=>SportsAll(),
        RecipesAll.id:(context)=>RecipesAll(),
        ValoInfo.id:(context)=>ValoInfo(),
        CsgoInfo.id:(context)=>CsgoInfo(),
        GtaInfo.id:(context)=>GtaInfo(),
        PubgInfo.id:(context)=>PubgInfo(),
        CodInfo.id:(context)=>CodInfo(),
        IndianInfo.id:(context)=>IndianInfo(),
        ItalianInfo.id:(context)=>ItalianInfo(),
        ChineseInfo.id:(context)=>ChineseInfo(),
        ThaiInfo.id:(context)=>ThaiInfo(),
        SpanishInfo.id:(context)=>SpanishInfo(),
        HipHopInfo.id:(context)=>HipHopInfo(),
        KathakInfo.id:(context)=>KathakInfo(),
        FreeStyleInfo.id:(context)=>FreeStyleInfo(),
        JazzInfo.id:(context)=>JazzInfo(),
        ContemInfo.id:(context)=>ContemInfo(),
        CricketInfo.id:(context)=>CricketInfo(),
        FootBallInfo.id:(context)=>FootBallInfo(),
        BasketBallInfo.id:(context)=>BasketBallInfo(),
        HockeyInfo.id:(context)=>HockeyInfo(),
        VolleyBallInfo.id:(context)=>VolleyBallInfo(),
        JavaInfo.id:(context)=>JavaInfo(),
        PythonInfo.id:(context)=>PythonInfo(),
        FlutterInfo.id:(context)=>FlutterInfo(),
        JavaScriptInfo.id:(context)=>JavaScriptInfo(),
        CppInfo.id:(context)=>CppInfo(),
      },
    );
  }
}


