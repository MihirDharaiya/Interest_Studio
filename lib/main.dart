import 'package:flutter/material.dart';
import 'info/CpInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CodInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CppInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CsgoInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/FlutterInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/GtaInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/JavaInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/PubgInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/PythonInfo.dart';
import 'screens/loginPage.dart';
import 'screens/homePage.dart';
import 'screens/welcomePage.dart';
import 'screens/SignupPage.dart';
import 'moreButton/EsportsMore.dart';
import 'screens/homePage.dart';
import 'moreButton/RecipesMore.dart';
import 'moreButton/SportsMore.dart';
import 'moreButton/DanceMore.dart';
import 'moreButton/ProgrammingMore.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';
import 'info/ThaiInfo.dart';
import 'info/IndianInfo.dart';
import 'info/ItalianInfo.dart';
import 'info/MexicanInfo.dart';
import 'info/ChineseInfo.dart';
import 'info/ChessInfo.dart';
import 'info/FootballInfo.dart';
import 'info/CricketInfo.dart';
import 'info/HockeyInfo.dart';
import 'info/BadmintonInfo.dart';
import 'info/JazzInfo.dart';
import 'info/KathakInfo.dart';
import 'info/ClassicalInfo.dart';
import 'info/HiphopInfo.dart';
import 'info/FolkInfo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InterestStudio());
}

class InterestStudio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id:(context)=> WelcomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignupPage.id:(context)=>SignupPage(),
        HomePage.id:(context)=>HomePage(),
        EsportsMore.id:(context)=>EsportsMore(),
        DanceMore.id:(context)=>DanceMore(),
        ProgrammingMore.id:(context)=>ProgrammingMore(),
        SportsMore.id:(context)=>SportsMore(),
        RecipesMore.id:(context)=>RecipesMore(),
        ValorantInfo.id:(context)=>ValorantInfo(),
        CsgoInfo.id:(context)=>CsgoInfo(),
        CodInfo.id:(context)=>CodInfo(),
        PubgInfo.id:(context)=>PubgInfo(),
        GtaInfo.id:(context)=>GtaInfo(),
        FlutterInfo.id:(context)=>FlutterInfo(),
        JavaInfo.id:(context)=>JavaInfo(),
        PythonInfo.id:(context)=>PythonInfo(),
        CproInfo.id:(context)=>CproInfo(),
        CppInfo.id:(context)=>CppInfo(),
        ThaiInfo.id:(context)=>ThaiInfo(),
        ChineseInfo.id:(context)=>ChineseInfo(),
        MexicanInfo.id:(context)=>MexicanInfo(),
        IndianInfo.id:(context)=>IndianInfo(),
        ItalianInfo.id:(context)=>ItalianInfo(),
        CricketInfo.id:(context)=>CricketInfo(),
        FootballInfo.id:(context)=>FootballInfo(),
        HockeyInfo.id:(context)=>HockeyInfo(),
        BadmintonInfo.id:(context)=>BadmintonInfo(),
        ChessInfo.id:(context)=>ChessInfo(),
        HiphopInfo.id:(context)=>HiphopInfo(),
        ClassicalInfo.id:(context)=>ClassicalInfo(),
        KathakInfo.id:(context)=>KathakInfo(),
        FolkInfo.id:(context)=>FolkInfo(),
        JazzInfo.id:(context)=>JazzInfo(),
      },
    );
  }
}

