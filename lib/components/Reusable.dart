import 'package:flutter/material.dart';
class Fields extends StatelessWidget {
  Fields({this.string ,this.s,this.press,this.inputType});
  final String string;
  final bool s;
  final Function press;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
      child: TextField(
        keyboardType: inputType,
        onChanged: press,
        style: TextStyle(
          height: 0.5,
        ),
        textAlign: TextAlign.center,
        obscureText: s,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
          ),
          border: OutlineInputBorder(),
          // labelText: 'Password',
          hintText: string,
        ),
      ),
    );
  }
}