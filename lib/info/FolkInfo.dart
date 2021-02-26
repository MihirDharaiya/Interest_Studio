import 'package:flutter/material.dart';

class FolkInfo extends StatefulWidget {
  static const String id = 'folk_info';
  @override
  _FolkInfoState createState() => _FolkInfoState();
}

class _FolkInfoState extends State<FolkInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('FOLK DANCE',
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
                child: Text('ABOUT FOLK ::',
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
                'This is FOLK '
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