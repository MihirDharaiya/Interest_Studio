import 'package:flutter/material.dart';
class CodInfo extends StatefulWidget {
  static const String id = 'Cod_info';
  @override
  _CodInfoState createState() => _CodInfoState();
}

class _CodInfoState extends State<CodInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('CALL OF DUTY',
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
                child: Text('ABOUT CALL OF DUTY:',
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
                'This IS COD '
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


