import 'package:flutter/material.dart';

class CppInfo extends StatefulWidget {
  static const String id = 'cpp_info';
  @override
  _CppInfoState createState() => _CppInfoState();
}

class _CppInfoState extends State<CppInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('C++',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
              child: Center(
                child: Text('ABOUT C++ ::',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'This is C++ '
                ,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            OutlinedButton(onPressed: (){}, child: Text(
              'Follow This Interest',
              style: TextStyle(
              ),
            ),
              style: OutlinedButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}