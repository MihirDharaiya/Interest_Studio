import 'package:flutter/material.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/constants.dart';
import 'package:interest_studio/components/InfoTextBox.dart';
import 'package:interest_studio/components/InfoOutlineButton.dart';
import 'package:interest_studio/screens/loginPage.dart';

class ValoInfo extends StatefulWidget {
  static const String id = 'valo_info';
  @override
  _ValoInfoState createState() => _ValoInfoState();
}

class _ValoInfoState extends State<ValoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        shadowColor: kPrimaryColor,
        backgroundColor: Colors.white,
        title: Center(
          child: Text('VALORANT',
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



