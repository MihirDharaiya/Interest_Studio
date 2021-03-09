import 'package:flutter/material.dart';
import 'package:interest_studio/constants.dart';
class InfoOutlineButton extends StatelessWidget {
  final Function press;

  const InfoOutlineButton({@required this.press}) ;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text('Follow This Interest'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      borderSide: BorderSide(
          color: kPrimaryColor,
          width: 4.0
      ),
      onPressed: press,

    );
  }
}
