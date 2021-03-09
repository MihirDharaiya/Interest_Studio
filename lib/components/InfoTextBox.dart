import 'package:flutter/material.dart';
class InfoTextBox extends StatelessWidget {
  final String text;

  const InfoTextBox({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
      margin: EdgeInsets.all(20.0),
      height: 500.0,
      width: 500.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.black26,
      ),
    );
  }
}