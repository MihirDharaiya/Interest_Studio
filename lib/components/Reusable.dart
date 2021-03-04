import 'package:flutter/material.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/constants.dart';
class Fields extends StatefulWidget {
  Fields({this.string ,this.s,this.press,this.inputType,this.icons});
  final String string;

  final bool s;
  final Function press;
  final TextInputType inputType;
  final Widget icons;

  @override
  _FieldsState createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
      child: TextFormField(

        keyboardType: widget.inputType,
        onChanged: widget.press,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0
        ),
        textAlign: TextAlign.center,
        obscureText: widget.s,
        decoration: InputDecoration(
          hintText: widget.string,
          icon: widget.icons ,
          hintStyle: TextStyle(
            color: Colors.black,

          ),
          border: OutlineInputBorder(),
           // labelText: 'Password',
        ),
      ),
    );
  }
}