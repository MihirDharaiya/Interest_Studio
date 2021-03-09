import 'package:flutter/material.dart';
import 'package:interest_studio/components/InfoOutlineButton.dart';
import 'package:interest_studio/components/InfoTextBox.dart';
import 'package:interest_studio/constants.dart';

class PubgInfo extends StatefulWidget {
  static const String id = 'Pubg_info';
  @override
  _PubgInfoState createState() => _PubgInfoState();
}

class _PubgInfoState extends State<PubgInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        shadowColor: kPrimaryColor,
        backgroundColor: Colors.white,
        title: Center(
          child: Text('PUBG',
            style: TextStyle(color: kPrimaryColor,fontSize: 18,fontWeight: FontWeight.w900),),
        ),
      ),
      body: Column(
        children: [
          InfoTextBox(text:''),
          Text('List of People Following This Interest',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0),
          InfoOutlineButton(
              press: (){
              }
          ),
        ],
      ),
    );
  }
}