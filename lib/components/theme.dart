import 'package:flutter/material.dart';
import 'package:interest_studio/constants.dart';
ThemeData theme(){
  return ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(headline6: TextStyle(color: Color(0xFF8B8B8B),fontSize: 18))
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor)
      )
  );
}