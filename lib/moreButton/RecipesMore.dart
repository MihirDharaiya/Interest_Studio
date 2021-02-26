import 'package:flutter/material.dart';
import 'package:interest_studio/info/ChineseInfo.dart';
import 'package:interest_studio/info/IndianInfo.dart';
import 'package:interest_studio/info/ItalianInfo.dart';
import 'package:interest_studio/info/MexicanInfo.dart';
import 'package:interest_studio/info/ThaiInfo.dart';
class RecipesMore extends StatefulWidget {
  static const String id = 'recipes_more';
  @override
  _RecipesMoreState createState() => _RecipesMoreState();
}

class _RecipesMoreState extends State<RecipesMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'RECIPES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, IndianInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('INDIAN',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ChineseInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('CHINESE',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ItalianInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('ITALIAN',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, MexicanInfo.id);
          },
          child: Card(
            elevation: 10.0,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('MEXICAN',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ThaiInfo.id);
          },
          child: Card(
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
              child: Center(
                child: Text('THAI',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              ),
            ),
          ),
        ),
      ],),
    );
  }
}
