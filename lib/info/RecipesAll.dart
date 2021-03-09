import 'package:flutter/material.dart';
import 'package:interest_studio/components/ReusableContainer.dart';
import 'package:interest_studio/info/RecipesInfo/ChineseInfo.dart';
import 'package:interest_studio/info/RecipesInfo/IndianInfo.dart';
import 'package:interest_studio/info/RecipesInfo/ItalianInfo.dart';
import 'package:interest_studio/info/RecipesInfo/SpanishInfo.dart';
import 'package:interest_studio/info/RecipesInfo/ThaiInfo.dart';

class RecipesAll extends StatefulWidget {
  static const String id= 'Recipes_all';
  @override
  _RecipesAllState createState() => _RecipesAllState();
}

class _RecipesAllState extends State<RecipesAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RECIPES',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   'Studio',
              //   style: TextStyle(
              //       color: kPrimaryColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 20),
              // ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, IndianInfo.id);
                },
                title: 'INDIAN',
                image: 'https://images.unsplash.com/photo-1606491956689-2ea866880c84?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8aW5kaWFuJTIwZm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                onTap: (){
                      Navigator.pushNamed(context, ChineseInfo.id);
                },
                title: 'CHINESE',
                image: 'https://images.unsplash.com/flagged/photo-1556742524-750f2ab99913?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpbmVzZSUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, ThaiInfo.id);
                },
                title: 'THAI',
                image: 'https://images.unsplash.com/photo-1562565651-7d4948f339eb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dGhhaSUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, SpanishInfo.id);
                },
                title: 'SPANISH',
                image: 'https://images.unsplash.com/photo-1529566186297-155c18f9a434?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Z2F6cGFjaG98ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                onTap: (){
                  Navigator.pushNamed(context, ItalianInfo.id);
                },
                title: 'ITALIAN',
                image: 'https://images.unsplash.com/photo-1574126154517-d1e0d89ef734?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cGl6emF8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),



            ],
          ),
        ),
      ),
    );
  }
}



